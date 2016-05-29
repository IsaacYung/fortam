# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.gmail.com',
  :domain         => 'mail.google.com',
  :port           => 587,
  :user_name      => 'isaaczoi@gmail.com',
  :password       => 'Ogml15Lopi*08',
  :authentication => :plain,
  :enable_starttls_auto => true
}

ActionMailer::Base.raise_delivery_errors = true
