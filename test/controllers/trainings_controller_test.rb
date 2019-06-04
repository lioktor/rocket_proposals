require 'test_helper'

class TrainingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trainings_index_url
    assert_response :success
  end

  test "should get new" do
    get trainings_new_url
    assert_response :success
  end

  test "should get create" do
    get trainings_create_url
    assert_response :success
  end

  test "should get edit" do
    get trainings_edit_url
    assert_response :success
  end

  test "should get update" do
    get trainings_update_url
    assert_response :success
  end

  test "should get show" do
    get trainings_show_url
    assert_response :success
  end

  test "should get destroy" do
    get trainings_destroy_url
    assert_response :success
  end

end
