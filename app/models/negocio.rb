class Negocio < ActiveRecord::Base
  attr_accessible :descripcion, :direccion, :horarios, :localidad, :nombre, :telefono, :www

def self.search(search)
  if search
  	if search.empty?
  	  []
  	else
  	  where("nombre LIKE ?", "%#{search}%")
  	end
    #find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    #find(:all)
  end
end

end

