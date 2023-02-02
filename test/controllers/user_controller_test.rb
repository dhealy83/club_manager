require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get member_number:integer" do
    get user_member_number:integer_url
    assert_response :success
  end

  test "should get first_name" do
    get user_first_name_url
    assert_response :success
  end

  test "should get last_name" do
    get user_last_name_url
    assert_response :success
  end

  test "should get email" do
    get user_email_url
    assert_response :success
  end

  test "should get street_addres" do
    get user_street_addres_url
    assert_response :success
  end

  test "should get city" do
    get user_city_url
    assert_response :success
  end

  test "should get state" do
    get user_state_url
    assert_response :success
  end

  test "should get zip_code:integer" do
    get user_zip_code:integer_url
    assert_response :success
  end

  test "should get phone_number" do
    get user_phone_number_url
    assert_response :success
  end
end
