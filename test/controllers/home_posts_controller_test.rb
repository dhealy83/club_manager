require "test_helper"

class HomePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_post = home_posts(:one)
  end

  test "should get index" do
    get home_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_home_post_url
    assert_response :success
  end

  test "should create home_post" do
    assert_difference("HomePost.count") do
      post home_posts_url, params: { home_post: { description: @home_post.description, title: @home_post.title } }
    end

    assert_redirected_to home_post_url(HomePost.last)
  end

  test "should show home_post" do
    get home_post_url(@home_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_post_url(@home_post)
    assert_response :success
  end

  test "should update home_post" do
    patch home_post_url(@home_post), params: { home_post: { description: @home_post.description, title: @home_post.title } }
    assert_redirected_to home_post_url(@home_post)
  end

  test "should destroy home_post" do
    assert_difference("HomePost.count", -1) do
      delete home_post_url(@home_post)
    end

    assert_redirected_to home_posts_url
  end
end
