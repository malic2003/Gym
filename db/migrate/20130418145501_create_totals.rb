class CreateTotals < ActiveRecord::Migration
  def change
    create_table :totals do |t|
      t.string :nombre
      t.string :rehab
      t.string :gym
      t.string :cancha

      t.timestamps
    end
  end
end
