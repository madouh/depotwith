require 'test_helper'

class ErrorControllerTest < ActionController::TestCase
  test "should get no_found" do
    get :no_found
    assert_response :success
  end

  test "should get acess_denied" do
    get :acess_denied
    assert_response :success
  end

  test "should get oops" do
    get :oops
    assert_response :success
  end

end
