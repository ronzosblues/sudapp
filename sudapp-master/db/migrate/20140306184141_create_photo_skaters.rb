class CreatePhotoSkaters < ActiveRecord::Migration
  def change
    create_table :photo_skaters do |t|
      t.attachment :photo
      t.belongs_to :skater, index: true

      t.timestamps
    end
  end
end
