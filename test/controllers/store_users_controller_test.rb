require 'test_helper'

class StoreUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @store_user = store_users(:one)
  end

  test "should get index" do
    get store_users_url
    assert_response :success
  end

  test "should get new" do
    get new_store_user_url
    assert_response :success
  end

  test "should create store_user" do
    assert_difference('StoreUser.count') do
      post store_users_url, params: { store_user: { store_id: @store_user.store_id, user_id: @store_user.user_id } }
    end

    assert_redirected_to store_user_url(StoreUser.last)
  end

  test "should show store_user" do
    get store_user_url(@store_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_user_url(@store_user)
    assert_response :success
  end

  test "should update store_user" do
    patch store_user_url(@store_user), params: { store_user: { store_id: @store_user.store_id, user_id: @store_user.user_id } }
    assert_redirected_to store_user_url(@store_user)
  end

  test "should destroy store_user" do
    assert_difference('StoreUser.count', -1) do
      delete store_user_url(@store_user)
    end

    assert_redirected_to store_users_url
  end
end
