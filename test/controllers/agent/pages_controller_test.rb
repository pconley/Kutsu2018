require 'test_helper'

class Agent::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get agent_pages_show_url
    assert_response :success
  end

end
