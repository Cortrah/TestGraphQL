require 'test_helper'

class UnitActionsControllerTest < ActionController::TestCase
  setup do
    @unit_action = unit_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_action" do
    assert_difference('UnitAction.count') do
      post :create, unit_action: { code: @unit_action.code, cost: @unit_action.cost, description: @unit_action.description, name: @unit_action.name, phase: @unit_action.phase, position_state_id: @unit_action.position_state_id, unit_action_type_id: @unit_action.unit_action_type_id }
    end

    assert_redirected_to unit_action_path(assigns(:unit_action))
  end

  test "should show unit_action" do
    get :show, id: @unit_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_action
    assert_response :success
  end

  test "should update unit_action" do
    patch :update, id: @unit_action, unit_action: { code: @unit_action.code, cost: @unit_action.cost, description: @unit_action.description, name: @unit_action.name, phase: @unit_action.phase, position_state_id: @unit_action.position_state_id, unit_action_type_id: @unit_action.unit_action_type_id }
    assert_redirected_to unit_action_path(assigns(:unit_action))
  end

  test "should destroy unit_action" do
    assert_difference('UnitAction.count', -1) do
      delete :destroy, id: @unit_action
    end

    assert_redirected_to unit_actions_path
  end
end
