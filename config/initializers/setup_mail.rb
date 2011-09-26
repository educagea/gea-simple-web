ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "mundogea.com",
  :user_name            => "enrique.barra",
  :password             => ENV['EMAIL_PASS'],
  :authentication       => :login,
  :enable_starttls_auto => true
}
