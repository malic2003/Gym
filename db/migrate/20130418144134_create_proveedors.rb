class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :apellido
      t.string :tel_casa
      t.string :tel_particular
      t.string :direccion
      t.string :mail
      t.string :notas
      t.string :cuil

      t.timestamps
    end
  end
end
