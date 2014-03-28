require 'test_helper'

class SueldosControllerTest < ActionController::TestCase
  setup do
    @sueldo = sueldos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sueldos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sueldo" do
    assert_difference('Sueldo.count') do
      post :create, sueldo: { fecha: @sueldo.fecha, horas_trab: @sueldo.horas_trab, pago: @sueldo.pago }
    end

    assert_redirected_to sueldo_path(assigns(:sueldo))
  end

  test "should show sueldo" do
    get :show, id: @sueldo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sueldo
    assert_response :success
  end

  test "should update sueldo" do
    put :update, id: @sueldo, sueldo: { fecha: @sueldo.fecha, horas_trab: @sueldo.horas_trab, pago: @sueldo.pago }
    assert_redirected_to sueldo_path(assigns(:sueldo))
  end

  test "should destroy sueldo" do
    assert_difference('Sueldo.count', -1) do
      delete :destroy, id: @sueldo
    end

    assert_redirected_to sueldos_path
  end
end
