class Album < ActiveRecord::Base

	has_many :photos, :dependent => :destroy
	
	validates_presence_of :album_title

end
