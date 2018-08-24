require 'test_helper'

class MakebrsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get makebrs_index_url
    assert_response :success
  end

  test "should get new" do
    get makebrs_new_url
    assert_response :success
  end

  test "should get show" do
    get makebrs_show_url
    assert_response :success
  end

  test "should get create" do
    get makebrs_create_url
    assert_response :success
  end

end
