class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :album, index: true
      t.string :photo_title
      t.attachment :photo

      t.timestamps
    end
  end
end
