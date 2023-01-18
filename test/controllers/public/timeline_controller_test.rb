require "test_helper"

class Public::TimelineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_timeline_index_url
    assert_response :success
  end
end
