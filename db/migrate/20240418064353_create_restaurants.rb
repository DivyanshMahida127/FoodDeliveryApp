class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone_number
      t.time :open_time
      t.time :close_time
      t.string :address
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
