class UserMailer < ActionMailer::Base




def newsletter(title,body,user)
	@newsletter_body = body
	@newsletter_title = title
	@user = user
	mail(
	from: 'sudamerica.skateboarding@gmail.com',
	to: @user.email,
	subject: @newsletter_title 
	)
end

def contact(title,body,user)
	@newsletter_body = body
	@newsletter_title = title
	@user = user
	mail(
	from: @user.email,
	to: 'ronzo.orlandini@gmail.com',
	subject: @newsletter_title 
	)
end




end
