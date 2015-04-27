require 'test_helper'

class IdearsControllerTest < ActionController::TestCase
  setup do
    @idear = idears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idear" do
    assert_difference('Idear.count') do
      post :create, idear: { filled: @idear.filled, idea_id: @idear.idea_id, role_id: @idear.role_id, user_id: @idear.user_id }
    end

    assert_redirected_to idear_path(assigns(:idear))
  end

  test "should show idear" do
    get :show, id: @idear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idear
    assert_response :success
  end

  test "should update idear" do
    patch :update, id: @idear, idear: { filled: @idear.filled, idea_id: @idear.idea_id, role_id: @idear.role_id, user_id: @idear.user_id }
    assert_redirected_to idear_path(assigns(:idear))
  end

  test "should destroy idear" do
    assert_difference('Idear.count', -1) do
      delete :destroy, id: @idear
    end

    assert_redirected_to idears_path
  end
end
