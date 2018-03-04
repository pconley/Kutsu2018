require 'test_helper'

class Admin::TestControllerTest < ActionDispatch::IntegrationTest
  test "should get sendex" do
    get admin_test_sendex_url
    assert_response :success
  end

end
