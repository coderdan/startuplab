App.configure do
  config.raise_mail_delivery_errors = false

  # Default host for sending emails.
  config.mailer_default_url_options = { host: 'startuplab-staging.herokuapp.com' }

  config.smtp_settings = {
    port:            '587',
    address:         'smtp.sendgrid.net',
    user_name:       ENV['SENDGRID_USERNAME'],
    password:        ENV['SENDGRID_PASSWORD'],
    authentication:  :plain
  }

  # Don't log redis in the application log.
  config.log_redis = false

  config.facebook_app_id     = '158229161209989'
  config.facebook_app_secret = ENV['FACEBOOK_APP_SECRET']
end
