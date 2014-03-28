class Proveedor < ActiveRecord::Base
  attr_accessible :apellido, :cuil, :direccion, :mail, :nombre, :notas, :tel_casa, :tel_particular
end
