class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception


  protected

  def configure_devise_permitted_parameters
	  devise_parameter_sanitizer.for(:sign_up) do |u|
		  u.permit(:email, :username, :password, :password_confirmation)
	  end
	end
end

