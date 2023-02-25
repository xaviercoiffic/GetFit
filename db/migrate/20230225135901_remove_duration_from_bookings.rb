class RemoveDurationFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :duration, :time
  end
end
