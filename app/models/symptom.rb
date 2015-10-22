class Symptom < ActiveRecord::Base
  has_many :user_symptoms
end
