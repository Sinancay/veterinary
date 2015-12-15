require 'test_helper'

class BarnsControllerTest < ActionController::TestCase
  setup do
    @barn = barns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barn" do
    assert_difference('Barn.count') do
      post :create, barn: { barn_cleandate: @barn.barn_cleandate, descrption: @barn.descrption, equipment_issing: @barn.equipment_issing, user_id: @barn.user_id }
    end

    assert_redirected_to barn_path(assigns(:barn))
  end

  test "should show barn" do
    get :show, id: @barn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barn
    assert_response :success
  end

  test "should update barn" do
    patch :update, id: @barn, barn: { barn_cleandate: @barn.barn_cleandate, descrption: @barn.descrption, equipment_issing: @barn.equipment_issing, user_id: @barn.user_id }
    assert_redirected_to barn_path(assigns(:barn))
  end

  test "should destroy barn" do
    assert_difference('Barn.count', -1) do
      delete :destroy, id: @barn
    end

    assert_redirected_to barns_path
  end
end
