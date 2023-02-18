class AddReviewToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :review, :integer
  end
end
