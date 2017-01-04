require 'test_helper'

class DriverControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get driver_create_url
    assert_response :success
  end

  test "should get update" do
    get driver_update_url
    assert_response :success
  end

end
