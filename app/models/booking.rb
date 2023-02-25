class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :package
  has_many :reviews
end
