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
end
