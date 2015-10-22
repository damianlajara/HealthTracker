class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :user_illnesses
  has_many :illnesses, through: :user_illnesses

  has_many :user_symptoms
  has_many :symptoms, through: :user_symptoms

  has_many :user_medications
  has_many :medications, through: :user_medications

  has_many :user_exercises
  has_many :exercises, through: :user_exercises

  has_many :appointments
end
