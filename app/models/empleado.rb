class Empleado < ActiveRecord::Base
  attr_accessible :apellido, :capacitacion, :clases, :cuil, :direccion, :dni, :edad, :experiencia, :horarios, :horas_mes, :horas_mes_anterior, :mail, :mes, :nacimiento, :nombre, :notas, :observaciones, :porcentaje, :salario, :tel_casa, :tel_emergencia, :tel_particular, :valor_hora
end
