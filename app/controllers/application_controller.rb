class ApplicationController < ActionController::Base
  
  add_flash_types :danger, :info, :warning, :success


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end


  rescue_from CanCan::AccessDenied do |exception|
  	flash[:danger] = "Access denied!"
  	redirect_to root_url
  end
end