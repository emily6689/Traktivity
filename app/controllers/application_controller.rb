class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    # def after_sign_in_path_for(resource)
    #   activities_path
    # end

    def configure_permitted_parameters
          devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation)}
    end
end
