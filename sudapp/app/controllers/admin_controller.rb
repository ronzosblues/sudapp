class AdminController < ApplicationController

	def index
	if ActivacionIndumentaria.exists?(id: 1) 
	else
	redirect_to :controller => '/admin', :action => 'crear_valor_indumentaria'
	end
	admin_check
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
	@contactbody = params[:mensaje]
	@contacttitle = params[:asunto]
	@email = params[:email]
	UserMailer.contact_not_signed(@contacttitle,@contactbody,@email).deliver
	redirect_to :controller => '/admin'
	end

	def contact_email_signed_in
	@contactbody = params[:mensaje]
	@contacttitle = params[:asunto]
	@user = current_user
	UserMailer.contact(@contacttitle,@contactbody,@user).deliver
	redirect_to :controller => '/admin'
	end

	def activar_indumentaria
		admin_check
		@act = ActivacionIndumentaria.first
		@act.update_attributes(:activacion => 1)
		redirect_to :controller => '/admin'
	end

	def desactivar_indumentaria
		admin_check
		@act = ActivacionIndumentaria.first
		@act.update_attributes(:activacion => 0)
		redirect_to :controller => '/admin'
	end

	def crear_valor_indumentaria
		admin_check
		@act = ActivacionIndumentaria.new
		@act = ActivacionIndumentaria.create :activacion => 1
		@act.save
		redirect_to :controller => '/admin'
	end
 
 		def header
		admin_check
		@act = Images.first
		@act = Images.update_attributes(:photo => @photo_header)
		redirect_to :controller => '/admin'
	end

		def banner
		admin_check
		@images = Image.limit(3)
 		@banner = @images[1]
		@banner.update_attributes(:photo => @photo_banner)
		redirect_to :controller => '/admin'
	end

		def footer
		admin_check
		@images = Image.limit(3)
 		@footer = @images[2]
		@footer.update_attributes(:photo => @photo_footer)
		redirect_to :controller => '/admin'
	end

end
