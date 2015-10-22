class UserSymptom < ActiveRecord::Base
  belongs_to :users 
  belongs_to :symptom
end
