class RoutinesController < ApplicationController

  def new
    @user_routine = User.new
  end

  def symptom_list
    symptom_list = Symptom.all.map {|s| s.common_term }
    respond_to do |format|
       format.json { render json: symptom_list }
    end
  end

  def symptom_check
    symptoms = params[:symptoms].gsub(", ", ",").split(",")
    respond_to do |format|
       format.json { render json: SymptomChecker.possible_illnesses(symptoms).uniq }
    end
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
