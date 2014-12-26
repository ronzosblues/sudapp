class WelcomeController < ApplicationController
	def admin
		if current_user.try(:admin?)
			redirect_to :controller => '/admin'
		else
			redirect_to :action => 'index'
		end
	end


	def index
	end

end
