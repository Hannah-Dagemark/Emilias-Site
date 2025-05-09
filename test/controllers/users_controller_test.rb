require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)  # Assuming you have a fixture or factory for @user
  end
  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "should get create" do
    post users_path
    assert_response :success

    # post users_path, params: { user: { username: "testuser", password: "password123" } }
    # assert_redirected_to user_path(User.last)
  end

  test "should get edit" do
    get edit_user_path(@user)
    assert_response :success
  end

  test "should get update" do
    patch user_path(@user)
    assert_response :success

    # Probably also assert a successful redirect later and push correct data params
  end

  test "should get destroy" do
    delete user_path(@user)
    assert_response :success

    # Possibly this one too I suppose
  end
end
