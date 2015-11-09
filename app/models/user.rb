class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_illnesses
  has_many :illnesses, through: :user_illnesses

  has_many :user_medications
  has_many :medications, through: :user_medications

  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  has_many :appointments

  has_many :feelings

  has_many :user_circles
  has_many :circles, through: :user_circles

  has_many :user_statuses

  has_many :checkups_users
  has_many :yearly_checkups, through: :checkups_users

  has_many :user_stats

  has_many :prescriptions
  has_many :pending_events

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }


  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  def checkups
    checkups = []
    physical = self.appointments.where(appt_type: "Physical")
    blood = self.appointments.where(appt_type: "Blood")
    dental = self.appointments.where(appt_type: "Dental")
    optical = self.appointments.where(appt_type: "Optical")

    annuals = [physical, blood, dental, optical]

    annuals.each do |a|
      if a.empty?
        checkups << "empty"
      else
        checkups << a
      end
    end 

    checkups
  end



end
