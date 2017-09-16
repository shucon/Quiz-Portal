require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_new_url
    assert_response :success
  end

  test "should get monitor" do
    get admin_monitor_url
    assert_response :success
  end

end
