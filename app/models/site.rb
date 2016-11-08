class Site < ApplicationRecord
  has_many :anchors
  has_many :titles

  validates_format_of :url, :with => URI::regexp(%w(http https))
  validates :url, presence: true

  after_create :scrapping_a
  after_create -> { scrapping_title('h1') }
  after_create -> { scrapping_title('h2') }
  after_create -> { scrapping_title('h3') }

  def scrapping_a 
    agent = Mechanize.new
    page = agent.get(url).parser
    page.css('a').each do |anchor|
      self.anchors.create(content: anchor.text, href: anchor.attr('href'), html: anchor.to_html)
    end
  end

    def scrapping_title(type)
    agent = Mechanize.new
    page = agent.get(url).parser
    page.css(type).each do |title|
      self.titles.create(content: title.text, html: title.to_html, tag: title.name)
    end
  end
end
