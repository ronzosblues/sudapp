class CreateVideoPosts < ActiveRecord::Migration
  def change
    create_table :video_posts do |t|
      t.string :video_post_title
      t.string :video_post_url
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
