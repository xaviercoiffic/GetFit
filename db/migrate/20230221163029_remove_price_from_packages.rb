class RemovePriceFromPackages < ActiveRecord::Migration[7.0]
  def change
    remove_column :packages, :price, :integer
  end
end
