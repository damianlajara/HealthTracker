class RoutinesController < ApplicationController
  before_filter :authenticate_user! 

  def new
    @user_routine = User.new
  end

  def symptom_check
    symptoms = params[:symptoms].split(",")
    binding.pry
    symptoms.each do |s|
      current_user.symptoms << Symptom.find_or_create_by(common_term: s)
    end
    binding.pry
    
    "hello"
  end
  
  def create 
    binding.pry
  end

  def routine_params
    params.require(:routine).permit(:symptoms)
  end 
  
end
