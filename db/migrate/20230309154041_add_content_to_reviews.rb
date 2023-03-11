class AddContentToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :content, :text
    remove_column :reviews, :review, :string
  end
end
