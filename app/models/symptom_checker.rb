class SymptomChecker

  def initialize(current_user)
    @user = current_user
  end

  attr_accessor :user

  def possible_illnesses
    possible_illnesses_1 = []

    Illness.all.each do |i|
      @user.symptoms.each do |s|
        if i.symptoms.include? s 
          possible_illnesses_1 << i.common_term
        end
      end
    end

    possible_illnesses_1
  end

end