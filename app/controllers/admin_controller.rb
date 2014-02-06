class AdminController < ApplicationController

	def index
	end

	def newsletterform
	end

	def dispatch_email
	@newsletterbody = params[:mensaje]
	@newslettertitle = params[:asunto]
	User.all.each do |usuario|
	UserMailer.newsletter(@newslettertitle,@newsletterbody,usuario).deliver
	end
	redirect_to :controller => '/admin'
	end

	def contact_email
	@newsletterbody = params[:mensaje]
	@newslettertitle = params[:asunto]
	@user = params[:user]
	UserMailer.newsletter(@newslettertitle,@newsletterbody).deliver
	redirect_to :controller => '/admin'
	end

end
