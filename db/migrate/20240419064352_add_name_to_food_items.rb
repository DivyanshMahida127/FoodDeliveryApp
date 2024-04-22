class AddNameToFoodItems < ActiveRecord::Migration[7.1]
  def change
    add_column :food_items, :name, :string
  end
end
