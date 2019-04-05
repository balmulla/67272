require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do 
      create_users
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { bank_id: "3", email: "a@a.com", name: @Rachel.name, password_digest: @Rachel.password_digest, phone: @Rachel.phone } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@Rachel)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@Rachel)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@Rachel), params: { user: { bank_id: @Rachel.bank_id, email: @Rachel.email, name: @Rachel.name, password_digest: @Rachel.password_digest, phone: @Rachel.phone } }
    assert_redirected_to user_url(@Rachel)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@Rachel)
    end

    assert_redirected_to users_url
  end
end
