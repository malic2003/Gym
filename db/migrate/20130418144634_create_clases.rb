class CreateClases < ActiveRecord::Migration
  def change
    create_table :clases do |t|
      t.string :nombre
      t.string :nombre_prof
      t.string :profesor
      t.string :clases

      t.timestamps
    end
  end
end
