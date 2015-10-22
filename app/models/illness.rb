class Illness < ActiveRecord::Base
  has_many :user_illnesses
  has_many :users, through: :user_illnesses
end
