class Equipo < ActiveRecord::Base
  attr_accessible :descripcion, :fecha_proximo, :fecha_ultimo, :gasto, :nombre
end
