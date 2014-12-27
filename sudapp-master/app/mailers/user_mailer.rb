class UserMailer < ActionMailer::Base

def newsletter(title,body,user)
	@newsletter_body = body
	@newsletter_title = title
	@user = user
	mail(
	from: 'sudamerica.contacto@gmail.com',
	to: @user.email,
	subject: @newsletter_title 
	)
end

def contact(title,body,user)
	@contact_body = body
	@contact_title = title
	@user = user
	mail(
	from: @user.email,
	to: 'sudamerica.contacto@gmail.com',
	subject: @contact_title 
	)
end

def contact_not_signed(title,body,email)
	@contact_body = body
	@contact_title = title
	@email = email
	mail(
	from: @email,
	to: 'sudamerica.contacto@gmail.com',
	subject: @contact_title 
	)
end




end
