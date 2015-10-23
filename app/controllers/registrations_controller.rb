class RegistrationsController < Devise::RegistrationsController

 private

 def sign_up_params
   params.require(:user).permit(:home, :work, :school, :first_name, :last_name, :birthdate, :height, :weight, :gender, :email, :password, :password_confirmation)
 end

 def account_update_params
   params.require(:user).permit(:home, :work, :school, :first_name, :last_name, :birthdate, :height, :weight, :gender, :email, :password, :password_confirmation, :current_password)
 end
 
end