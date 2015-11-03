class Appointment < ActiveRecord::Base
  belongs_to :user

  def url 
  	"./../appointments/#{self.id}"
  end
  
end
