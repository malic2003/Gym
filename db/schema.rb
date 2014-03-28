# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130418145501) do

  create_table "clases", :force => true do |t|
    t.string   "nombre"
    t.string   "nombre_prof"
    t.string   "profesor"
    t.string   "clases"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.string   "tel_casa"
    t.string   "tel_particular"
    t.string   "direccion"
    t.string   "mail"
    t.string   "notas"
    t.string   "edad"
    t.string   "nacimiento"
    t.string   "cuil"
    t.string   "tel_emergencia"
    t.string   "medico_cabe"
    t.string   "telefono_cabe"
    t.string   "medico_trat"
    t.string   "telefono_trat"
    t.string   "fecha_ultimo_control"
    t.string   "patologia"
    t.string   "actividades"
    t.string   "objetivos"
    t.string   "epicrisis"
    t.string   "asistencia"
    t.string   "vencimiento"
    t.string   "sesiones"
    t.string   "costo"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "egresos", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "tipo"
    t.string   "monto"
    t.string   "diario"
    t.string   "beer_tan"
    t.string   "pepsico"
    t.string   "ro_golo"
    t.string   "payes"
    t.string   "art_limpieza"
    t.string   "varios"
    t.string   "retiro_gus"
    t.string   "fecha"
    t.string   "usuario"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "empleados", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.string   "tel_casa"
    t.string   "tel_particular"
    t.string   "direccion"
    t.string   "mail"
    t.string   "notas"
    t.string   "capacitacion"
    t.string   "experiencia"
    t.string   "horarios"
    t.string   "observaciones"
    t.string   "edad"
    t.string   "nacimiento"
    t.string   "cuil"
    t.string   "tel_emergencia"
    t.string   "valor_hora"
    t.string   "horas_mes"
    t.string   "horas_mes_anterior"
    t.string   "porcentaje"
    t.string   "mes"
    t.string   "clases"
    t.string   "salario"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "equipos", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "fecha_ultimo"
    t.string   "fecha_proximo"
    t.string   "gasto"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "ingresos", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "monto"
    t.string   "turno"
    t.string   "bar"
    t.string   "paleta"
    t.string   "prot_grip"
    t.string   "pelota"
    t.string   "fecha"
    t.string   "cliente"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "proveedors", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "tel_casa"
    t.string   "tel_particular"
    t.string   "direccion"
    t.string   "mail"
    t.string   "notas"
    t.string   "cuil"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "subclases", :force => true do |t|
    t.string   "nombre"
    t.string   "dia"
    t.string   "hora_i"
    t.string   "hora_f"
    t.string   "alumnos"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sueldos", :force => true do |t|
    t.string   "horas_trab"
    t.string   "pago"
    t.string   "fecha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "totals", :force => true do |t|
    t.string   "nombre"
    t.string   "rehab"
    t.string   "gym"
    t.string   "cancha"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
