class TipoProducto < ActiveRecord::Base

    has_many :productos, :dependent => :destroy
    
	validates_presence_of :nombre_tipo_producto

end
