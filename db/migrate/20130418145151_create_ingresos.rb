class CreateIngresos < ActiveRecord::Migration
  def change
    create_table :ingresos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :monto
      t.string :turno
      t.string :bar
      t.string :paleta
      t.string :prot_grip
      t.string :pelota
      t.string :fecha
      t.string :cliente

      t.timestamps
    end
  end
end
