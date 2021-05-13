class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?

  private

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name, :last_name, :first_name_ruby, :last_name_ruby, :birthdate])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
  end
end
