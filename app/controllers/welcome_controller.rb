class WelcomeController < ApplicationController
	def admin
		if current_user.try(:admin?)
			redirect_to :controller => '/admin'
		else
			redirect_to :action => 'index'
		end
	end

	def index
	
		Post.all.each do |post|
		if post.inicio
		@post_inicio = post 	
		end 
        end 
	end

end
