class AddInicioToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :inicio, :boolean
  end
end
