require 'test_helper'

class NeutropeniaControllerTest < ActionController::TestCase
  test "should get info" do
    get :info
    assert_response :success
  end

end
