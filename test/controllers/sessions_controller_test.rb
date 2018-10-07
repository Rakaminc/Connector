require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get sessions_new_url
    assert_response :success
  end

end
