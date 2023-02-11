class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :availability
  has_many :reviews
end
