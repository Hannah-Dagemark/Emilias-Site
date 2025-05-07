require "test_helper"

class Test::ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_images_index_url
    assert_response :success
  end

  test "should get new" do
    get test_images_new_url
    assert_response :success
  end

  test "should get create" do
    get test_images_create_url
    assert_response :success
  end

  test "should get show" do
    get test_images_show_url
    assert_response :success
  end
end
