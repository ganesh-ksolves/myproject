class ApplicationController < ActionController::Base
    before_action :authenticate_user! , except: [:home]

      # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    # protect_from_forgery with: :exception

    # before_action :configure_permitted_parameters, if: :devise_controller?

    # protected

    #     def configure_permitted_parameters
    #         devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
    #         devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :current_password) }
    #     end
    before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname , :lastname , :username , :email , :password , :confirmation_password , :profile_pic])
  end
end
