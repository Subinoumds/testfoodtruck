class FoodTruck < ApplicationRecord
  belongs_to :user
  has_many :menus
  has_many :reviews
  has_many :opening_hours
end
