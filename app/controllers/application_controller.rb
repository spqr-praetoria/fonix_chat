class ApplicationController < ActionController::Base
  layout :layout_by_resource

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :email, :remember_me, :password)
    end
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :username ])
  end

  private

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
