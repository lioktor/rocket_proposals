require 'test_helper'

class MissionTrainingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get mission_trainings_new_url
    assert_response :success
  end

  test "should get create" do
    get mission_trainings_create_url
    assert_response :success
  end

end
