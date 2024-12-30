class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  allow_browser versions: :modern
  
  
  protected

  def authorize_request(kind = nil)
    unless kind.include?(Current_user.role)
      redirect_to posts_path, notice: "No estas autorizado para realizar esta acción"
    end
  end

  def after_sign_in_path_for(resource)
    posts_path
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

end
