require 'test_helper'

class QuotationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quotations_index_url
    assert_response :success
  end

  test "should get new" do
    get quotations_new_url
    assert_response :success
  end

  test "should get create" do
    get quotations_create_url
    assert_response :success
  end

  test "should get edit" do
    get quotations_edit_url
    assert_response :success
  end

  test "should get update" do
    get quotations_update_url
    assert_response :success
  end

  test "should get show" do
    get quotations_show_url
    assert_response :success
  end

  test "should get destroy" do
    get quotations_destroy_url
    assert_response :success
  end

end
