 ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "http://sudamericapp.herokuapp.com/",
  :user_name            => "sudamerica.contacto@gmail.com",
  :password             => "cachorro123!",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "http://sudamericapp.herokuapp.com/"