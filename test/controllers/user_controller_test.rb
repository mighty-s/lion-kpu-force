require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get viewmenu" do
    get user_viewmenu_url
    assert_response :success
  end

  test "should get order" do
    get user_order_url
    assert_response :success
  end

  test "should get order_history" do
    get user_order_history_url
    assert_response :success
  end

  test "should get logout_user" do
    get user_logout_user_url
    assert_response :success
  end

  test "should get menual_user" do
    get user_menual_user_url
    assert_response :success
  end

end
