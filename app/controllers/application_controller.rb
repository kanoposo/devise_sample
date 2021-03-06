class ApplicationController < ActionController::Base
  before_action :configure_permitted_paramters, if: :devise_controller?

  def configure_permitted_paramters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:nickname])
  end
end
