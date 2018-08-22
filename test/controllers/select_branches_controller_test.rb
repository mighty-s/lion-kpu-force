require 'test_helper'

class SelectBranchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get select_branches_index_url
    assert_response :success
  end

  test "should get new" do
    get select_branches_new_url
    assert_response :success
  end

  test "should get create" do
    get select_branches_create_url
    assert_response :success
  end

  test "should get show" do
    get select_branches_show_url
    assert_response :success
  end

end
