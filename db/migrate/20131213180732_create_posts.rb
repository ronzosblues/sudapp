class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.text :post_body
      t.attachment :post_photo
      t.string :post_autor

      t.timestamps
    end
  end
end
