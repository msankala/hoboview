OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.FACEBOOK_APPID, Rails.application.secrets.FACEBOOK_SECRET,
    scope: 'email', display: 'popup'#, provider_ignores_state: true
  provider :google_oauth2, Rails.application.secrets.GOOGLE_CLIENT_ID, Rails.application.secrets.GOOGLE_CLIENT_SECRET

end