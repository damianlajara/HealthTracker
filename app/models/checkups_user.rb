class CheckupsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :yearly_checkup
end
