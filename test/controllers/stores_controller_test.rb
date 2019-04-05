require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    create_stores
  end

  test "should get index" do
    get stores_url
    assert_response :success
  end

  test "should get new" do
    get new_store_url
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post stores_url, params: { store: { closing_time: @CMU.closing_time, latitude: @CMU.latitude, longitude: @CMU.longitude, name: @CMU.name, opening_time: @CMU.opening_time } }
    end

    assert_redirected_to store_url(Store.last)
  end

  test "should show store" do
    get store_url(@CMU)
    assert_response :success
  end

  test "should get edit" do
    get edit_store_url(@CMU)
    assert_response :success
  end

  test "should update store" do
    patch store_url(@CMU), params: { store: { closing_time: @CMU.closing_time, latitude: @CMU.latitude, longitude: @CMU.longitude, name: @CMU.name, opening_time: @CMU.opening_time, type: @CMU.type } }
    assert_redirected_to store_url(@CMU)
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete store_url(@CMU)
    end

    assert_redirected_to stores_url
  end
end
