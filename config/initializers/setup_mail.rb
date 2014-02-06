 ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "sudamericasa.com",
  :user_name            => "ronzo.orlandini@gmail.com",
  :password             => "2y2son4!parabola",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"