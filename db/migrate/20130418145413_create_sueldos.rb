class CreateSueldos < ActiveRecord::Migration
  def change
    create_table :sueldos do |t|
      t.string :horas_trab
      t.string :pago
      t.string :fecha

      t.timestamps
    end
  end
end
