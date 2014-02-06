class CreateCommentPosts < ActiveRecord::Migration
  def change
    create_table :comment_posts do |t|
      t.string :content
      t.belongs_to :post, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
