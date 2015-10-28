class RoutinesController < ApplicationController
  before_filter :authenticate_user! 

  def new
    @user_routine = User.new
  end

  def symptom_check
    symptoms = params[:symptoms].gsub(", ", ",").split(",")
    
    respond_to do |format|
       format.json { render json: SymptomChecker.possible_illnesses(symptoms).uniq }
     end
  end
  
  def create 
    binding.pry
  end

  def routine_params
    params.require(:routine).permit(:symptoms, :illnesses)
  end 
  
end
