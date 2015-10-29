class SymptomChecker

  def self.possible_illnesses(symptoms)

    possible_illnesses_1 = []
    Illness.all.each do |i|
      symptoms.each do |s|
        s = Symptom.find_by(common_term: s)
        if i.symptoms.include?(s)
          possible_illnesses_1 << i.common_term
        end
      end
    end
   
    possible_illnesses_1
  end

end