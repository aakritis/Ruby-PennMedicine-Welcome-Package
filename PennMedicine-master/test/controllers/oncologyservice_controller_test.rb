require 'test_helper'

class OncologyserviceControllerTest < ActionController::TestCase
  test "should get info" do
    get :info
    assert_response :success
  end

end
