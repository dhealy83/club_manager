require "application_system_test_case"

class HomePostsTest < ApplicationSystemTestCase
  setup do
    @home_post = home_posts(:one)
  end

  test "visiting the index" do
    visit home_posts_url
    assert_selector "h1", text: "Home posts"
  end

  test "should create home post" do
    visit home_posts_url
    click_on "New home post"

    fill_in "Description", with: @home_post.description
    fill_in "Title", with: @home_post.title
    click_on "Create Home post"

    assert_text "Home post was successfully created"
    click_on "Back"
  end

  test "should update Home post" do
    visit home_post_url(@home_post)
    click_on "Edit this home post", match: :first

    fill_in "Description", with: @home_post.description
    fill_in "Title", with: @home_post.title
    click_on "Update Home post"

    assert_text "Home post was successfully updated"
    click_on "Back"
  end

  test "should destroy Home post" do
    visit home_post_url(@home_post)
    click_on "Destroy this home post", match: :first

    assert_text "Home post was successfully destroyed"
  end
end
