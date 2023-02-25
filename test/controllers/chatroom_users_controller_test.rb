require "test_helper"

class ChatroomUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get chatroom_users_new_url
    assert_response :success
  end

  test "should get create" do
    get chatroom_users_create_url
    assert_response :success
  end
end
