class AddWeightToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :weight, :integer
  end
end
