require 'test_helper'

class RegionsBordersControllerTest < ActionController::TestCase
  setup do
    @regions_border = regions_borders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regions_borders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regions_border" do
    assert_difference('RegionsBorder.count') do
      post :create, regions_border: { border_type_id: @regions_border.border_type_id, is_secret: @regions_border.is_secret, name: @regions_border.name, sink_id: @regions_border.sink_id, source_id: @regions_border.source_id }
    end

    assert_redirected_to regions_border_path(assigns(:regions_border))
  end

  test "should show regions_border" do
    get :show, id: @regions_border
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regions_border
    assert_response :success
  end

  test "should update regions_border" do
    patch :update, id: @regions_border, regions_border: { border_type_id: @regions_border.border_type_id, is_secret: @regions_border.is_secret, name: @regions_border.name, sink_id: @regions_border.sink_id, source_id: @regions_border.source_id }
    assert_redirected_to regions_border_path(assigns(:regions_border))
  end

  test "should destroy regions_border" do
    assert_difference('RegionsBorder.count', -1) do
      delete :destroy, id: @regions_border
    end

    assert_redirected_to regions_borders_path
  end
end
