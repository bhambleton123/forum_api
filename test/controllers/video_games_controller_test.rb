require 'test_helper'

class VideoGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get video_games_get_url
    assert_response :success
  end

  test "should get create" do
    get video_games_create_url
    assert_response :success
  end

  test "should get delete" do
    get video_games_delete_url
    assert_response :success
  end

end
