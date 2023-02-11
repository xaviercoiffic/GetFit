class RemoveInstructorFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :instructor, :string
  end
end
