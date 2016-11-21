Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  config.omniauth :twitter, "BkObbIfTyDIVzMDrf5yoA25D8", "d20B0fkg9b0KJsNausk9dURKqF5JA8rV8jvgDDqWzcn8wXTzsA"

  config.mailer_sender = "nakayabazoe@gmail.com"

    config.unlock_strategy = :email
    config.maximum_attempts = 4
end