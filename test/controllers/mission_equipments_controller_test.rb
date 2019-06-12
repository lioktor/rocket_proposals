require 'test_helper'

class MissionEquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mission_equipments_new_url
    assert_response :success
  end

  test "should get create" do
    get mission_equipments_create_url
    assert_response :success
  end

end
