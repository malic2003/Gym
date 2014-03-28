require 'test_helper'

class TotalsControllerTest < ActionController::TestCase
  setup do
    @total = totals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:totals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create total" do
    assert_difference('Total.count') do
      post :create, total: { cancha: @total.cancha, gym: @total.gym, nombre: @total.nombre, rehab: @total.rehab }
    end

    assert_redirected_to total_path(assigns(:total))
  end

  test "should show total" do
    get :show, id: @total
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @total
    assert_response :success
  end

  test "should update total" do
    put :update, id: @total, total: { cancha: @total.cancha, gym: @total.gym, nombre: @total.nombre, rehab: @total.rehab }
    assert_redirected_to total_path(assigns(:total))
  end

  test "should destroy total" do
    assert_difference('Total.count', -1) do
      delete :destroy, id: @total
    end

    assert_redirected_to totals_path
  end
end
