class Producto < ActiveRecord::Base

  belongs_to :tipo_producto

  has_many :pedidos, :dependent => :destroy

  has_attached_file :foto_producto

  validates_presence_of :precio
  validates_presence_of :tipo_producto
  validates_presence_of :foto_producto
  validates_presence_of :talles_producto
  validates_presence_of :nombre_producto


end
