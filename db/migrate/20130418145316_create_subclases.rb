class CreateSubclases < ActiveRecord::Migration
  def change
    create_table :subclases do |t|
      t.string :nombre
      t.string :dia
      t.string :hora_i
      t.string :hora_f
      t.string :alumnos

      t.timestamps
    end
  end
end
