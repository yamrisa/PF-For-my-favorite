require "test_helper"

class Public::ColectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get colection" do
    get public_colections_colection_url
    assert_response :success
  end

  test "should get uncolection" do
    get public_colections_uncolection_url
    assert_response :success
  end
end
