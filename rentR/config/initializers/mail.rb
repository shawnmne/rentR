

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '25',
  :authentication => :plain,
  domain:               ENV["DOMAIN"],
  user_name:            ENV["EMAIL_ADDRESS"],
  password:             ENV["PASSWORD"]
}