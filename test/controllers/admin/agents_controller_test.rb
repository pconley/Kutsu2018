require 'test_helper'

class Admin::AgentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_agents_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_agents_show_url
    assert_response :success
  end

end
