require 'test_helper'

class EmpleadosControllerTest < ActionController::TestCase
  setup do
    @empleado = empleados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empleados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empleado" do
    assert_difference('Empleado.count') do
      post :create, empleado: { apellido: @empleado.apellido, capacitacion: @empleado.capacitacion, clases: @empleado.clases, cuil: @empleado.cuil, direccion: @empleado.direccion, dni: @empleado.dni, edad: @empleado.edad, experiencia: @empleado.experiencia, horarios: @empleado.horarios, horas_mes: @empleado.horas_mes, horas_mes_anterior: @empleado.horas_mes_anterior, mail: @empleado.mail, mes: @empleado.mes, nacimiento: @empleado.nacimiento, nombre: @empleado.nombre, notas: @empleado.notas, observaciones: @empleado.observaciones, porcentaje: @empleado.porcentaje, salario: @empleado.salario, tel_casa: @empleado.tel_casa, tel_emergencia: @empleado.tel_emergencia, tel_particular: @empleado.tel_particular, valor_hora: @empleado.valor_hora }
    end

    assert_redirected_to empleado_path(assigns(:empleado))
  end

  test "should show empleado" do
    get :show, id: @empleado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empleado
    assert_response :success
  end

  test "should update empleado" do
    put :update, id: @empleado, empleado: { apellido: @empleado.apellido, capacitacion: @empleado.capacitacion, clases: @empleado.clases, cuil: @empleado.cuil, direccion: @empleado.direccion, dni: @empleado.dni, edad: @empleado.edad, experiencia: @empleado.experiencia, horarios: @empleado.horarios, horas_mes: @empleado.horas_mes, horas_mes_anterior: @empleado.horas_mes_anterior, mail: @empleado.mail, mes: @empleado.mes, nacimiento: @empleado.nacimiento, nombre: @empleado.nombre, notas: @empleado.notas, observaciones: @empleado.observaciones, porcentaje: @empleado.porcentaje, salario: @empleado.salario, tel_casa: @empleado.tel_casa, tel_emergencia: @empleado.tel_emergencia, tel_particular: @empleado.tel_particular, valor_hora: @empleado.valor_hora }
    assert_redirected_to empleado_path(assigns(:empleado))
  end

  test "should destroy empleado" do
    assert_difference('Empleado.count', -1) do
      delete :destroy, id: @empleado
    end

    assert_redirected_to empleados_path
  end
end
