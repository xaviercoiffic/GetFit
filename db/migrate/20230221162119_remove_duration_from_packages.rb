class RemoveDurationFromPackages < ActiveRecord::Migration[7.0]
  def change
    remove_column :packages, :duration, :time
  end
end
