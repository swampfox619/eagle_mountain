# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
 
  ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.sendgrid.net',
    :port                 => '587',
    :authentication       => :plain,
    :user_name            => 'lewis@eaglemountaindigital.com',
    :password             => 'LDVine78!!',
    :domain               => 'eaglemountaindigital.com',
    :enable_starttls_auto => true
  }