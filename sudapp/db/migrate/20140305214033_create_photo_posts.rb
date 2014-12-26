class CreatePhotoPosts < ActiveRecord::Migration
  def change
    create_table :photo_posts do |t|
      t.attachment :photo
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
