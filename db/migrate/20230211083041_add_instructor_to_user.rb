class AddInstructorToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :instructor, :string
  end
end
