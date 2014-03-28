class CreateEgresos < ActiveRecord::Migration
  def change
    create_table :egresos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tipo
      t.string :monto
      t.string :diario
      t.string :beer_tan
      t.string :pepsico
      t.string :ro_golo
      t.string :payes
      t.string :art_limpieza
      t.string :varios
      t.string :retiro_gus
      t.string :fecha
      t.string :usuario

      t.timestamps
    end
  end
end
