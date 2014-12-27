class Photo < ActiveRecord::Base

  belongs_to :album
  
  has_many :comment_photos, :dependent => :destroy

  has_attached_file :photo


  validates_attachment_presence :photo
  validates_presence_of  :photo_title

  
end
