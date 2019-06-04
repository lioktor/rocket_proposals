require 'test_helper'

class OpportunitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get opportunities_index_url
    assert_response :success
  end

  test "should get new" do
    get opportunities_new_url
    assert_response :success
  end

  test "should get create" do
    get opportunities_create_url
    assert_response :success
  end

  test "should get edit" do
    get opportunities_edit_url
    assert_response :success
  end

  test "should get update" do
    get opportunities_update_url
    assert_response :success
  end

  test "should get show" do
    get opportunities_show_url
    assert_response :success
  end

end
