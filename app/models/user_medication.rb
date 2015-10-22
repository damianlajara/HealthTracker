class UserMedication < ActiveRecord::Base
  belongs_to :user 
  belongs_to :medication 
end
