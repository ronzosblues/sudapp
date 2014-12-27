class CreateTipoProductos < ActiveRecord::Migration
  def change
    create_table :tipo_productos do |t|
      t.string :nombre_tipo_producto

      t.timestamps
    end
  end
end
