require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { actividades: @cliente.actividades, apellido: @cliente.apellido, asistencia: @cliente.asistencia, costo: @cliente.costo, cuil: @cliente.cuil, direccion: @cliente.direccion, dni: @cliente.dni, edad: @cliente.edad, epicrisis: @cliente.epicrisis, fecha_ultimo_control: @cliente.fecha_ultimo_control, mail: @cliente.mail, medico_cabe: @cliente.medico_cabe, medico_trat: @cliente.medico_trat, nacimiento: @cliente.nacimiento, nombre: @cliente.nombre, notas: @cliente.notas, objetivos: @cliente.objetivos, patologia: @cliente.patologia, sesiones: @cliente.sesiones, tel_casa: @cliente.tel_casa, tel_emergencia: @cliente.tel_emergencia, tel_particular: @cliente.tel_particular, telefono_cabe: @cliente.telefono_cabe, telefono_trat: @cliente.telefono_trat, vencimiento: @cliente.vencimiento }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    put :update, id: @cliente, cliente: { actividades: @cliente.actividades, apellido: @cliente.apellido, asistencia: @cliente.asistencia, costo: @cliente.costo, cuil: @cliente.cuil, direccion: @cliente.direccion, dni: @cliente.dni, edad: @cliente.edad, epicrisis: @cliente.epicrisis, fecha_ultimo_control: @cliente.fecha_ultimo_control, mail: @cliente.mail, medico_cabe: @cliente.medico_cabe, medico_trat: @cliente.medico_trat, nacimiento: @cliente.nacimiento, nombre: @cliente.nombre, notas: @cliente.notas, objetivos: @cliente.objetivos, patologia: @cliente.patologia, sesiones: @cliente.sesiones, tel_casa: @cliente.tel_casa, tel_emergencia: @cliente.tel_emergencia, tel_particular: @cliente.tel_particular, telefono_cabe: @cliente.telefono_cabe, telefono_trat: @cliente.telefono_trat, vencimiento: @cliente.vencimiento }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
