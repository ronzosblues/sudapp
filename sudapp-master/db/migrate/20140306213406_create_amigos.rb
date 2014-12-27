class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.string :name
      t.string :web

      t.timestamps
    end
  end
end
