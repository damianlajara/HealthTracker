class Exercise < ActiveRecord::Base
  has_many :user_exercises 
  has_many :users, through: :user_exercises

  serialize :irregular_frequency

  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }
end
