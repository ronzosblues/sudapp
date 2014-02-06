class AdminController < ApplicationController

	def index
	end

	def newsletterform
	end

	def dispatch_email
	@newsletterbody = params[:mensaje]
	@newslettertitle = params[:asunto]
	UserMailer.newsletter(@newslettertitle,@newsletterbody).deliver
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
