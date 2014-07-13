class User < ActiveRecord::Base
  has_many :authenticators
  has_many :panoramas

  def self.authenticate(authenticator, omniauth)
    unless @user = authenticator.user
      if @user = User.where(email: omniauth.info.email).first
        @user.authenticators << authenticator
        @user.oauth_token = omniauth.credentials.token
        @user.oauth_expires_at = Time.at(omniauth.credentials.expires_at)
        @user.save
      else
        @user = User.create do |user|
          user.authenticators << authenticator
          user.name = omniauth.info.name
          user.email = omniauth.info.email
          user.oauth_token = omniauth.credentials.token
          user.oauth_expires_at = Time.at(omniauth.credentials.expires_at)
        end
      end
    end
    return @user
  end
end