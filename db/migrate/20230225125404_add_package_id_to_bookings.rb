class AddPackageIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :package_id, :integer
  end
end
