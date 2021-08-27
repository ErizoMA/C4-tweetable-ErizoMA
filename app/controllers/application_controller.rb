class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authorize_user!, except: %i[index show]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username name avatar])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username,:name,:avatar])
  end
end
