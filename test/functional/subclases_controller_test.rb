require 'test_helper'

class SubclasesControllerTest < ActionController::TestCase
  setup do
    @subclase = subclases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subclases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subclase" do
    assert_difference('Subclase.count') do
      post :create, subclase: { alumnos: @subclase.alumnos, dia: @subclase.dia, hora_f: @subclase.hora_f, hora_i: @subclase.hora_i, nombre: @subclase.nombre }
    end

    assert_redirected_to subclase_path(assigns(:subclase))
  end

  test "should show subclase" do
    get :show, id: @subclase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subclase
    assert_response :success
  end

  test "should update subclase" do
    put :update, id: @subclase, subclase: { alumnos: @subclase.alumnos, dia: @subclase.dia, hora_f: @subclase.hora_f, hora_i: @subclase.hora_i, nombre: @subclase.nombre }
    assert_redirected_to subclase_path(assigns(:subclase))
  end

  test "should destroy subclase" do
    assert_difference('Subclase.count', -1) do
      delete :destroy, id: @subclase
    end

    assert_redirected_to subclases_path
  end
end
