class SessionsController < ApplicationController
  after_filter :verify_authorized, except: [:create, :destroy]

  def create
    authenticator = Authenticator.from_omniauth(env["omniauth.auth"])
    user = User.authenticate(authenticator, env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end