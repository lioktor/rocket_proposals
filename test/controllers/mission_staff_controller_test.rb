require 'test_helper'

class MissionStaffControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mission_staff_new_url
    assert_response :success
  end

end
