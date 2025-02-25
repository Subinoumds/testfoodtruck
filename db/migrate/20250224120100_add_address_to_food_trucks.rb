class AddAddressToFoodTrucks < ActiveRecord::Migration[8.0]
  def change
    add_column :food_trucks, :address, :string
  end
end
