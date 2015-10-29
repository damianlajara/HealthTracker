class Illness < ActiveRecord::Base
  has_many :user_illnesses
  has_many :users, through: :user_illnesses

  has_many :illness_symptoms
  has_many :symptoms, through: :illness_symptoms

  validates :common_term, uniqueness: true

  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }
  
end
