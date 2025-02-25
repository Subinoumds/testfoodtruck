class CreateOpeningHours < ActiveRecord::Migration[8.0]
  def change
    create_table :opening_hours do |t|
      t.references :food_truck, null: false, foreign_key: true
      t.string :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
