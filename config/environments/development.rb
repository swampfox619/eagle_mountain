Rails.application.configure do

  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.action_mailer.asset_host = 'eagle-mountain-lewvine.c9users.io:8080/'
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = {host: 'eagle-mountain-lewvine.c9users.io:8080/'}
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  
  ActionMailer::Base.smtp_settings = {
    :address              => 'smtp.office365.com',
    :port                 => 587,
    :authentication       => :login,
    :user_name            => ENV['OUTLOOK_USERNAME'],
    :password             => ENV['OUTLOOK_PASSWORD'],
    :domain               => 'eaglemountaindigital.com',
    :enable_starttls_auto => true,
  }
  
  # ActionMailer::Base.smtp_settings = {
  #   :address        => 'smtp.gmail.com',
  #   :port           => '587',
  #   :authentication => :plain,
  #   :user_name      => ENV['GMAIL_USERNAME'],
  #   :password       => ENV['GMAIL_PASSWORD'],
  #   :domain         => 'Mydomain.com',
  #   :enable_starttls_auto => true
  # }
  
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
