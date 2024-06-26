class Cart < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: true

  has_many :line_items 
  has_one :order
end
