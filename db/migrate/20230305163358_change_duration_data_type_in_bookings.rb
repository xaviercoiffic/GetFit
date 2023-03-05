class ChangeDurationDataTypeInBookings < ActiveRecord::Migration[6.1]
  def change
    change_column :bookings, :duration, :string
  end
end
