class CreateActivacionIndumentaria < ActiveRecord::Migration
  def change
    create_table :activacion_indumentaria do |t|
      t.boolean :activacion

      t.timestamps
    end
  end
end
