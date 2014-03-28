class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :dni
      t.string :tel_casa
      t.string :tel_particular
      t.string :direccion
      t.string :mail
      t.string :notas
      t.string :edad
      t.string :nacimiento
      t.string :cuil
      t.string :tel_emergencia
      t.string :medico_cabe
      t.string :telefono_cabe
      t.string :medico_trat
      t.string :telefono_trat
      t.string :fecha_ultimo_control
      t.string :patologia
      t.string :actividades
      t.string :objetivos
      t.string :epicrisis
      t.string :asistencia
      t.string :vencimiento
      t.string :sesiones
      t.string :costo

      t.timestamps
    end
  end
end
