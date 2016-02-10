require 'test_helper'

class EnvironmentTypesControllerTest < ActionController::TestCase
  setup do
    @environment_type = environment_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:environment_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create environment_type" do
    assert_difference('EnvironmentType.count') do
      post :create, environment_type: { code: @environment_type.code, description: @environment_type.description, name: @environment_type.name }
    end

    assert_redirected_to environment_type_path(assigns(:environment_type))
  end

  test "should show environment_type" do
    get :show, id: @environment_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @environment_type
    assert_response :success
  end

  test "should update environment_type" do
    patch :update, id: @environment_type, environment_type: { code: @environment_type.code, description: @environment_type.description, name: @environment_type.name }
    assert_redirected_to environment_type_path(assigns(:environment_type))
  end

  test "should destroy environment_type" do
    assert_difference('EnvironmentType.count', -1) do
      delete :destroy, id: @environment_type
    end

    assert_redirected_to environment_types_path
  end
end
