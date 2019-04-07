require 'test_helper'

class BanksControllerTest < ActionDispatch::IntegrationTest
    # create the objects I want with factories
    setup do 
      create_banks
    end


  test "should get index" do
    get banks_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_url
    assert_response :success
  end

  test "should create bank" do
    assert_difference('Bank.count') do
      post banks_url, params: { bank: { name: @QIB.name } }
    end

    assert_redirected_to bank_url(Bank.last)
  end
  
  test "should not create bank" do
    assert_difference('Bank.count', 0) do
      post banks_url, params: { bank: { name: nil } }
    end

  end

  test "should show bank" do
    get bank_url(@QIB)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_url(@QIB)
    assert_response :success
  end

  test "should update bank" do
    patch bank_url(@QIB), params: { bank: { name: @QIB.name } }
    assert_redirected_to bank_url(@QIB)
  end
  
  test "should not update bank" do
    patch bank_url(@QIB), params: { bank: { name: nil } }
    assert_equal(@QIB.name, "Qatar Islamic Bank")
  end

  test "should destroy bank" do
    assert_difference('Bank.count', -1) do
      delete bank_url(@QIB)
    end

    assert_redirected_to banks_url
  end
end
