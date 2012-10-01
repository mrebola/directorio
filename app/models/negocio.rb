class Negocio < ActiveRecord::Base
  attr_accessible :descripcion, :direccion, :horarios, :localidad, :nombre, :telefono, :www
end
