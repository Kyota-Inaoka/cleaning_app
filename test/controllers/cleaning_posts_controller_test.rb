require "test_helper"

class CleaningPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cleaning_posts_new_url
    assert_response :success
  end
end
