class ApplicationController < ActionController::Base
  require 'faker'
  before_action(:configure_sign_up_params, if: :devise_controller?)
  before_action :authenticate_user!

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username, :password, :password_confirmation])
  end
end
