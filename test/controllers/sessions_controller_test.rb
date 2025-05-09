require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_sessions_path
    assert_response :success
  end

  test "should get create" do
    post sessions_path, params: { email: "test@email.com", password: "testpassword" }
    assert_redirected_to root_path
  end

  test "should get destroy" do
    post sessions_path, params: { email: "test@email.com", password: "testpassword" }
    delete sessions_path
    assert_redirected_to root_path
  end
end
