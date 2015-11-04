class RoutinesController < ApplicationController
  before_filter :authenticate_user! 

  def new
    @user_routine = User.new
  end

  def symptom_check
    symptoms = params[:symptoms].gsub(", ", ",").split(",")
    binding.pry
    respond_to do |format|
       format.json { render json: SymptomChecker.possible_illnesses(symptoms).uniq }
     end
     binding.pry
  end
  
  def create
    illness_name = routine_params[:illnesses]
    @illness = Illness.find_or_create_by(common_term: illness_name)
    @user = current_user.illnesses << @illness

    respond_to do |format|
      if current_user.save
        format.html { render :show}
      else
        format.html { render :new }
      end
    end
  end

  def routine_params
    params.require(:routine).permit(:symptoms, :illnesses)
  end 
  
end
