class CreateAvailibilities < ActiveRecord::Migration[7.0]
  def change
    create_table :availibilities do |t|
      t.date :date

      t.timestamps
    end
  end
end
