class Medication < ActiveRecord::Base
  has_many :user_medications
  has_many :users, through: :user_medications

  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }
end

