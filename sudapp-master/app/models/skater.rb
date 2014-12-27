class Skater < ActiveRecord::Base

	has_many :photo_skaters, :dependent => :destroy

	has_many :video_skaters, :dependent => :destroy

	has_attached_file :skater_photo


    validates_attachment_presence :skater_photo
    validates_presence_of  :skater_name
    validates_presence_of :skater_body
    
end
