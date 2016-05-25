

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  domain:               ENV["DOMAIN"],
  user_name:            ENV["EMAIL_ADDRESS"],
  password:             ENV["PASSWORD"],
  enable_starttls_auto: true
}