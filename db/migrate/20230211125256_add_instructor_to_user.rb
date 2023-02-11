class AddInstructorToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :instructor, :boolean
  end
end
