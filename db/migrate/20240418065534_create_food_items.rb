class CreateFoodItems < ActiveRecord::Migration[7.1]
  def change
    create_table :food_items do |t|
      t.integer :price
      t.string :description
      t.references :restaurant, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
