dev_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gentle-escarpment-92216.herokuapp.com',
  user_name:            ENV["GMAIL_USERNAME"] || 'kutsu',
  password:             ENV["GMAIL_PASSWORD"] || 'password',
  authentication:       'plain',
  enable_starttls_auto: true 
}
prod_settings = {
  address:              'smtp.sendgrid.net',
  port:                 587,
  domain:               'heroku.com',
  user_name:            ENV["SENDGRID_USERNAME"] || 'sendgrid',
  password:             ENV["SENDGRID_PASSWORD"] || 'password',
  authentication:       'plain',
  enable_starttls_auto: true 
}

ActionMailer::Base.delivery_method = :smtp

settings = dev_settings if Rails.env.development?
settings = prod_settings if Rails.env.productions?

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = settings
