require 'test_helper'

class BusinessProposalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get business_proposals_index_url
    assert_response :success
  end

  test "should get new" do
    get business_proposals_new_url
    assert_response :success
  end

  test "should get create" do
    get business_proposals_create_url
    assert_response :success
  end

  test "should get edit" do
    get business_proposals_edit_url
    assert_response :success
  end

  test "should get update" do
    get business_proposals_update_url
    assert_response :success
  end

  test "should get show" do
    get business_proposals_show_url
    assert_response :success
  end

end
