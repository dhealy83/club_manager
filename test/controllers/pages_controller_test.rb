require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get members" do
    get pages_members_url
    assert_response :success
  end

  test "should get leagues" do
    get pages_leagues_url
    assert_response :success
  end

  test "should get tournaments" do
    get pages_tournaments_url
    assert_response :success
  end

  test "should get bag_tags" do
    get pages_bag_tags_url
    assert_response :success
  end
end
