class RemoveTotalFromCarts < ActiveRecord::Migration[7.1]
  def change
    remove_column :carts, :total, :integer
  end
end
