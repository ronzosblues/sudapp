class CreateSkaters < ActiveRecord::Migration
  def change
    create_table :skaters do |t|
      t.string :skater_name
      t.text :skater_body
      t.attachment :skater_photo

      t.timestamps
    end
  end
end
