class AddInicioToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :inicio, :boolean
  end
end
