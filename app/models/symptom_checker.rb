class SymptomChecker

  def self.possible_illnesses(current_user)
    @user = current_user

    possible_illnesses_1 = []

    Illness.all.each do |i|
      @user.symptoms.each do |s|
        if i.symptoms.include?(s)
          possible_illnesses_1 << i.common_term
        end
      end
    end
   
    possible_illnesses_1
  end

end