require 'test_helper'

<<<<<<< HEAD:test/controllers/homes_controller_test.rb
class HomesControllerTest < ActionDispatch::IntegrationTest
=======
class UserControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
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

=======
>>>>>>> dffeb31dcfc912f3e13ef788092c0ade1a71f1ab:test/controllers/user_controller_test.rb
  # test "the truth" do
  #   assert true
  # end
>>>>>>> fdcc6c18bb4eebb4b0371b244b1c730a22bd19f1
end
