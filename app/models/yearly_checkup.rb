class YearlyCheckup < ActiveRecord::Base
  has_many :checkups_users
  has_many :users, through: :checkups_users
end
