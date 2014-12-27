class PhotoSkater < ActiveRecord::Base
  belongs_to :skater
  has_attached_file :photo
end
