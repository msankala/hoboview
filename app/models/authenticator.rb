class Authenticator < ActiveRecord::Base
  belongs_to :user

  def self.from_omniauth(omniauth)
    where(omniauth.slice(:provider, :uid)).first_or_create.tap do |auth|
      auth.provider = auth.provider
      auth.uid = auth.uid
    end
  end
end
