class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :packages
  has_many :bookings, dependent: :destroy
  has_many :goals
  has_many :chatrooms
  has_many :reviews, through: :bookings
  validates :email, presence: true, uniqueness: true
  serialize :speciality, Array
end
