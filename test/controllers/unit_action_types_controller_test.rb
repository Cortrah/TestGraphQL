require 'test_helper'

class UnitActionTypesControllerTest < ActionController::TestCase
  setup do
    @unit_action_type = unit_action_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_action_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_action_type" do
    assert_difference('UnitActionType.count') do
      post :create, unit_action_type: { code: @unit_action_type.code, description_template: @unit_action_type.description_template, name: @unit_action_type.name, results_template: @unit_action_type.results_template }
    end

    assert_redirected_to unit_action_type_path(assigns(:unit_action_type))
  end

  test "should show unit_action_type" do
    get :show, id: @unit_action_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_action_type
    assert_response :success
  end

  test "should update unit_action_type" do
    patch :update, id: @unit_action_type, unit_action_type: { code: @unit_action_type.code, description_template: @unit_action_type.description_template, name: @unit_action_type.name, results_template: @unit_action_type.results_template }
    assert_redirected_to unit_action_type_path(assigns(:unit_action_type))
  end

  test "should destroy unit_action_type" do
    assert_difference('UnitActionType.count', -1) do
      delete :destroy, id: @unit_action_type
    end

    assert_redirected_to unit_action_types_path
  end
end
