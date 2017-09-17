require 'test_helper'

class LeaderBoardControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get leader_board_user_url
    assert_response :success
  end

  test "should get admin" do
    get leader_board_admin_url
    assert_response :success
  end

  test "should get user_render" do
    get leader_board_user_render_url
    assert_response :success
  end

  test "should get admin_render" do
    get leader_board_admin_render_url
    assert_response :success
  end

end
