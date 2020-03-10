require 'test_helper'

class VideoGameThreadsControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get video_game_threads_get_url
    assert_response :success
  end

  test "should get create" do
    get video_game_threads_create_url
    assert_response :success
  end

  test "should get destroy" do
    get video_game_threads_destroy_url
    assert_response :success
  end

end
