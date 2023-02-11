class Availibility < ApplicationRecord
  has_many :bookings
  belongs_to :packages
end
