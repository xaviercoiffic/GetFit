class ChangeSpecialitiesInUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :speciality_tmp, :string
    User.all.each do |user|
      user.speciality = user.speciality if user.speciality.present?
      user.save!
    end
    remove_column :users, :speciality
    rename_column :users, :speciality_tmp, :speciality
  end  
end
