class CreateEquipos < ActiveRecord::Migration
  def change
    create_table :equipos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :fecha_ultimo
      t.string :fecha_proximo
      t.string :gasto

      t.timestamps
    end
  end
end
