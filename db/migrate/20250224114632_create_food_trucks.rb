class CreateFoodTrucks < ActiveRecord::Migration[8.0]
  def change
    create_table :food_trucks do |t|
      t.string :name
      t.string :cuisine_type
      t.text :description
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
