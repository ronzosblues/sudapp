class CreateCommentPhotos < ActiveRecord::Migration
  def change
    create_table :comment_photos do |t|
      t.string :content
      t.belongs_to :photo, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
