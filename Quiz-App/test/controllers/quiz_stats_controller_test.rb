require 'test_helper'

class QuizStatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get quiz_stats_new_url
    assert_response :success
  end

end
