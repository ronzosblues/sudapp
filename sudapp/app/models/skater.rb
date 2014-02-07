class Skater < ActiveRecord::Base

	has_attached_file :skater_photo


    validates_attachment_presence :skater_photo
    validates_presence_of  :skater_name
    validates_presence_of :skater_body
    
end
