class Symptom < ActiveRecord::Base

  has_many :illness_symptoms
  has_many :illness, through: :illness_symptoms

  validates :common_term, uniqueness: true
end
