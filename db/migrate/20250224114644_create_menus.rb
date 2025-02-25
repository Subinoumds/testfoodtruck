class CreateMenus < ActiveRecord::Migration[8.0]
  def change
    create_table :menus do |t|
      t.references :food_truck, null: false, foreign_key: true
      t.string :name
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
