class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.string :tel_casa
      t.string :tel_particular
      t.string :direccion
      t.string :mail
      t.string :notas
      t.string :capacitacion
      t.string :experiencia
      t.string :horarios
      t.string :observaciones
      t.string :edad
      t.string :nacimiento
      t.string :cuil
      t.string :tel_emergencia
      t.string :valor_hora
      t.string :horas_mes
      t.string :horas_mes_anterior
      t.string :porcentaje
      t.string :mes
      t.string :clases
      t.string :salario

      t.timestamps
    end
  end
end
