class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :email
    devise_parameter_sanitizer.for(:sign_up) << :password
    devise_parameter_sanitizer.for(:sign_up) << :password_confirmation
    devise_parameter_sanitizer.for(:sign_in) << :email
    devise_parameter_sanitizer.for(:sign_up) << :admin
  end

  def admin_check
    redirect_to :controller => "/welcome" unless current_user && current_user.admin?
  end

  def inaccesible
    redirect_to :controller => "/welcome" 
  end

  def indumentaria_permiso
    admin_check unless ActivacionIndumentaria.first.activacion == true
  end

end
