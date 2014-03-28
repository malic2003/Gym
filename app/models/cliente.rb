class Cliente < ActiveRecord::Base
  attr_accessible :actividades, :apellido, :asistencia, :costo, :cuil, :direccion, :dni, :edad, :epicrisis, :fecha_ultimo_control, :mail, :medico_cabe, :medico_trat, :nacimiento, :nombre, :notas, :objetivos, :patologia, :sesiones, :tel_casa, :tel_emergencia, :tel_particular, :telefono_cabe, :telefono_trat, :vencimiento
end
