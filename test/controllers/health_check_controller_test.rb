require 'test_helper'

class HealthCheckControllerTest < ActionDispatch::IntegrationTest
  test "should get basic" do
    get health_check_basic_url
    assert_response :success
  end

end
