require 'test_helper'

class InventoryWithdrawalsControllerTest < ActionController::TestCase
  setup do
    @inventory_withdrawal = inventory_withdrawals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_withdrawals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_withdrawal" do
    assert_difference('InventoryWithdrawal.count') do
      post :create, inventory_withdrawal: @inventory_withdrawal.attributes
    end

    assert_redirected_to inventory_withdrawal_path(assigns(:inventory_withdrawal))
  end

  test "should show inventory_withdrawal" do
    get :show, id: @inventory_withdrawal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_withdrawal.to_param
    assert_response :success
  end

  test "should update inventory_withdrawal" do
    put :update, id: @inventory_withdrawal.to_param, inventory_withdrawal: @inventory_withdrawal.attributes
    assert_redirected_to inventory_withdrawal_path(assigns(:inventory_withdrawal))
  end

  test "should destroy inventory_withdrawal" do
    assert_difference('InventoryWithdrawal.count', -1) do
      delete :destroy, id: @inventory_withdrawal.to_param
    end

    assert_redirected_to inventory_withdrawals_path
  end
end
