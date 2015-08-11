class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def authenticate_saasu
    redirect_to new_authentication_path unless session['oauth_token'].present?
  end
end
