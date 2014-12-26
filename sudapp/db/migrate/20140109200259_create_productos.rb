class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre_producto
      t.text :talles_producto
      t.attachment :foto_producto
      t.belongs_to :tipo_producto, index: true
      t.integer :precio

      t.timestamps
    end
  end
end
