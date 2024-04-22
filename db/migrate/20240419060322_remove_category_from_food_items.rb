class RemoveCategoryFromFoodItems < ActiveRecord::Migration[7.1]
  def change
    remove_reference :food_items, :category, null: false, foreign_key: true
  end
end
