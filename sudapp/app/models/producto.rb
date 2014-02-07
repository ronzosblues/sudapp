class Producto < ActiveRecord::Base

  belongs_to :tipo_producto

  has_attached_file :foto_producto

end
