class SymptomsController < ApplicationController

	def	index
	  @symptoms = Symptom.all
	  render :json => @symptoms
	end

end