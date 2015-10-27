class RoutinesController < ApplicationController
  before_filter :authenticate_user! 

  def new
    @user_routine = User.new
  end

  def symptom_check
    symptoms = params[:symptoms].split(",")
    
    symptoms.each do |s|
      current_user.symptoms << Symptom.find_or_create_by(common_term: s)
    end
    binding.pry
    respond_to do |format|
       format.json { render json: SymptomChecker.possible_illnesses(current_user) }
     end
  end
  
  def create 
    binding.pry
  end

  def routine_params
    params.require(:routine).permit(:symptoms)
  end 
  
end
