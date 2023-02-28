class AddUserIdToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :user_id, :string
    add_index :chatrooms, :user_id
  end
end
