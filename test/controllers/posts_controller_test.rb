require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get posts_get_url
    assert_response :success
  end

  test "should get create" do
    get posts_create_url
    assert_response :success
  end

  test "should get destroy" do
    get posts_destroy_url
    assert_response :success
  end

end
