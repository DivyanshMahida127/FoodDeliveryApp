class Category < ApplicationRecord
    has_many :food_items
    has_many :restaurants, through: :food_items
end
