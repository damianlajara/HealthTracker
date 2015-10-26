class Symptom < ActiveRecord::Base
  has_many :user_symptoms
  has_many :users, through: :user_symptoms

  has_many :illness_symptoms
  has_many :illness, through: :illness_symptoms
end
