require 'test_helper'

class PositionStatesControllerTest < ActionController::TestCase
  setup do
    @position_state = position_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:position_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position_state" do
    assert_difference('PositionState.count') do
      post :create, position_state: { materials_income: @position_state.materials_income, money_income: @position_state.money_income, name: @position_state.name, position_id: @position_state.position_id, research_income: @position_state.research_income, saved_materials: @position_state.saved_materials, saved_money: @position_state.saved_money, saved_research: @position_state.saved_research, score: @position_state.score, trade_value: @position_state.trade_value, turn_id: @position_state.turn_id }
    end

    assert_redirected_to position_state_path(assigns(:position_state))
  end

  test "should show position_state" do
    get :show, id: @position_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position_state
    assert_response :success
  end

  test "should update position_state" do
    patch :update, id: @position_state, position_state: { materials_income: @position_state.materials_income, money_income: @position_state.money_income, name: @position_state.name, position_id: @position_state.position_id, research_income: @position_state.research_income, saved_materials: @position_state.saved_materials, saved_money: @position_state.saved_money, saved_research: @position_state.saved_research, score: @position_state.score, trade_value: @position_state.trade_value, turn_id: @position_state.turn_id }
    assert_redirected_to position_state_path(assigns(:position_state))
  end

  test "should destroy position_state" do
    assert_difference('PositionState.count', -1) do
      delete :destroy, id: @position_state
    end

    assert_redirected_to position_states_path
  end
end
