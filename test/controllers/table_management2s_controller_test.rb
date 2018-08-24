require 'test_helper'

class TableManagement2sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get table_management2s_index_url
    assert_response :success
  end

  test "should get create" do
    get table_management2s_create_url
    assert_response :success
  end

  test "should get new" do
    get table_management2s_new_url
    assert_response :success
  end

end
