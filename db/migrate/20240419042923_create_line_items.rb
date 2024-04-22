class CreateLineItems < ActiveRecord::Migration[7.1]
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.references :food_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end