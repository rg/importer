require 'test_helper'

class BottlingsControllerTest < ActionController::TestCase
  setup do
    @bottling = bottlings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bottlings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bottling" do
    assert_difference('Bottling.count') do
      post :create, bottling: @bottling.attributes
    end

    assert_redirected_to bottling_path(assigns(:bottling))
  end

  test "should show bottling" do
    get :show, id: @bottling.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bottling.to_param
    assert_response :success
  end

  test "should update bottling" do
    put :update, id: @bottling.to_param, bottling: @bottling.attributes
    assert_redirected_to bottling_path(assigns(:bottling))
  end

  test "should destroy bottling" do
    assert_difference('Bottling.count', -1) do
      delete :destroy, id: @bottling.to_param
    end

    assert_redirected_to bottlings_path
  end
end
