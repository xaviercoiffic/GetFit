class CreatePackages < ActiveRecord::Migration[7.0]
  def change
    create_table :packages do |t|
      t.string :title
      t.string :description
      t.time :duration
      t.integer :price

      t.timestamps
    end
  end
end
