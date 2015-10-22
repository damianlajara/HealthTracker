class IllnessSymptom < ActiveRecord::Base
  belongs_to :illness 
  belongs_to :symptom 
end
