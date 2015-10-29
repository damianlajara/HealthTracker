class Circle < ActiveRecord::Base
	has_many :user_circles
	has_many :users, through: :user_circles


	def statuses 
		hash = {
			:energized => 0,
			:just_fine => 0,
			:exhausted => 0,
			:mildly_sick => 0,
			:very_sick => 0
		}

		self.users.each do |u|
	      unless u.user_statuses.last.nil?
	      	case u.user_statuses.where("created_at >= ?", Time.zone.now.beginning_of_day).last.status
				when "Energized"
					hash[:energized] += 1
				when "Just Fine"
					hash[:just_fine] += 1
				when "Exhausted"
					hash[:exhausted] += 1
				when "Mildly Sick"
					hash[:mildly_sick] += 1
				when "Very Sick"
					hash[:very_sick] += 1
			end
		  end
		end

		hash
	end

	def undefined_status 
		self.users.count - self.statuses.values.sum
	end


end
