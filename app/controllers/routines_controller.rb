class RoutinesController < ApplicationController
  before_filter :authenticate_user! 

  def new
    @user_routine = User.new
  end
  
  def create 
    binding.pry
  end

  def routine_params
    params.require(:user).permit(:name, :sick, :illnesses)
  end 
  
end
