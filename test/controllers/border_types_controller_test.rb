require 'test_helper'

class BorderTypesControllerTest < ActionController::TestCase
  setup do
    @border_type = border_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:border_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create border_type" do
    assert_difference('BorderType.count') do
      post :create, border_type: { code: @border_type.code, description: @border_type.description, is_directional: @border_type.is_directional, name: @border_type.name }
    end

    assert_redirected_to border_type_path(assigns(:border_type))
  end

  test "should show border_type" do
    get :show, id: @border_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @border_type
    assert_response :success
  end

  test "should update border_type" do
    patch :update, id: @border_type, border_type: { code: @border_type.code, description: @border_type.description, is_directional: @border_type.is_directional, name: @border_type.name }
    assert_redirected_to border_type_path(assigns(:border_type))
  end

  test "should destroy border_type" do
    assert_difference('BorderType.count', -1) do
      delete :destroy, id: @border_type
    end

    assert_redirected_to border_types_path
  end
end
