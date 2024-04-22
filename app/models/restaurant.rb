class Restaurant < ApplicationRecord
  belongs_to :city
  belongs_to :area

  has_many :food_items
  has_many :categories, through: :food_items
end
