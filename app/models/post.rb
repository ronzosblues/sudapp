class Post < ActiveRecord::Base

	has_many :comment_posts

	has_attached_file :post_photo


    validates_attachment_presence :post_photo
    validates_presence_of  :post_title
    validates_presence_of :post_body

end
