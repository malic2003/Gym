class Ingreso < ActiveRecord::Base
  attr_accessible :bar, :cliente, :descripcion, :fecha, :monto, :nombre, :paleta, :pelota, :prot_grip, :turno
end
