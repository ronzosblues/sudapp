class Video < ActiveRecord::Base

validates_presence_of :video_title
validates_presence_of :video_url

end
