require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get sessions_signin_url
    assert_response :success
  end

  test "should get sing_out" do
    get sessions_sing_out_url
    assert_response :success
  end

  test "should get home" do
    get sessions_home_url
    assert_response :success
  end

end
