class JavascriptsController < ApplicationController
  def possible_illnesses
    @illnesses = Illness.all
  end
end
