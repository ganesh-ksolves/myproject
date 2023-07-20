require "test_helper"

class ArticlesWithLastCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get articles_with_last_comments_index_url
    assert_response :success
  end
end
