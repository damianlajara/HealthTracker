class Appointment < ActiveRecord::Base
  belongs_to :user

  # def url 
  # 	"./../appointments/#{self.id}"
  # end

  # def self.format_date(date_time)
  #  Time.at(date_time.to_i).to_formatted_s(:db)
  # end

  def self.as_json(options = {})
    {
      :id => self.id,
      :title => self.reasons,
      :start => self.cal_date,
      :url => "./../appointments/#{self.id}",
      :textColor => "green"
    }
  end


  
end
