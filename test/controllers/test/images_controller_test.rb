require "test_helper"
include ActiveJob::TestHelper

class Test::ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get test_images_path
    assert_response :success
  end

  test "should get create" do
    file = fixture_file_upload("test_image.jpg", "image/jpeg")
    post test_images_path, params: { image: { file: file, title: "test" } }
    assert_redirected_to test_images_path
  end

  teardown do
    perform_enqueued_jobs do
      ActiveStorage::Blob.all.each(&:purge_later)
    end
  end
end
