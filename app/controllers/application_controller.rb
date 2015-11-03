class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


  def index 
  	render "application/index"
  end

  def root
    render "dashboard/dashboard"
  end

  private

      def configure_permitted_parameters
         devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:avatar, :first_name, :last_name, :birthdate, :height, :weight, :gender, :email, :password, :password_confirmation, :home, :work, :school)}        
         devise_parameter_sanitizer.for(:account_update){ |u| u.permit(:avatar, :first_name, :last_name, :birthdate, :height, :weight, :gender, :email, :password, :password_confirmation, :current_password, :home, :work, :school)}          
      end
end
