class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.belongs_to :user, index: true
      t.belongs_to :producto, index: true
      t.date :fecha

      t.timestamps
    end
  end
end
