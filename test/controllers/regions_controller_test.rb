require 'test_helper'

class RegionsControllerTest < ActionController::TestCase
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create region" do
    assert_difference('Region.count') do
      post :create, region: { code: @region.code, col: @region.col, environment_id: @region.environment_id, map_id: @region.map_id, materials: @region.materials, money: @region.money, name: @region.name, position_state_id: @region.position_state_id, research: @region.research, row: @region.row }
    end

    assert_redirected_to region_path(assigns(:region))
  end

  test "should show region" do
    get :show, id: @region
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @region
    assert_response :success
  end

  test "should update region" do
    patch :update, id: @region, region: { code: @region.code, col: @region.col, environment_id: @region.environment_id, map_id: @region.map_id, materials: @region.materials, money: @region.money, name: @region.name, position_state_id: @region.position_state_id, research: @region.research, row: @region.row }
    assert_redirected_to region_path(assigns(:region))
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete :destroy, id: @region
    end

    assert_redirected_to regions_path
  end
end
