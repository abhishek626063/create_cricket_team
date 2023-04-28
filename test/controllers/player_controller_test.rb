require "test_helper"

class PlayerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get player_create_url
    assert_response :success
  end
end
