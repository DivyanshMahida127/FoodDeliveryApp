class Order < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: true
  
  belongs_to :cart
end
