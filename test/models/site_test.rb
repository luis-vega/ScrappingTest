require 'test_helper'

class SiteTest < ActiveSupport::TestCase

  should have_many(:titles)
  should have_many(:anchors)

  should validate_presence_of(:url)

  test "should not save site without url format" do
    url = 'google.com'
    site = Site.new(url: url)
    assert_not site.save
  end

  test "should scrapping website" do 
    FakeWeb.register_uri :get , "http://www.google.com" , :body => '<h1>Google</h1><a href="#">Images</a>' , :content_type => "text/html"
    site = Site.create(url: "http://www.google.com")
    assert_equal 1, Title.count
    assert_equal 1, Anchor.count
  end

end
