class ChangeUserColumnForChatrooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :chatrooms, :user_id
    add_reference :chatrooms, :user, null: false, foreign_key: true
  end
end
