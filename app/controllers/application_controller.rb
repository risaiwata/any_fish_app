class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?

  private

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
  end
end
