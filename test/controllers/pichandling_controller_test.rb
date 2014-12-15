require 'test_helper'

class PichandlingControllerTest < ActionController::TestCase
  test "should get set" do
    get :set
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
