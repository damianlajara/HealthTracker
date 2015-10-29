class UserIllness < ActiveRecord::Base
  belongs_to :illness 
  belongs_to :user
end