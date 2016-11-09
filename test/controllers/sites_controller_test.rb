require 'test_helper'

class SitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site = sites(:google) 
  end

  test "should get index" do
    get sites_url, as: :json
    assert_response :success
  end

  test "should create site" do
    assert_difference('Site.count') do
      post sites_url, params: { site: { url: @site.url } }, as: :json
    end

    assert_response 201
  end
end
