class Illness < ActiveRecord::Base
  has_many :user_illnesses
  has_many :users, through: :user_illnesses

  has_many :illness_symptoms
  has_many :symptoms, through: :illness_symptoms
end
