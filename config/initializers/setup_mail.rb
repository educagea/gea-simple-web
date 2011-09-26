ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "mundogea.com",
  :user_name            => "enrique.barra@mundogea.com",
  :password             => ENV['EMAIL_PASS'],
  :authentication       => "plain",
  :enable_starttls_auto => true
}
