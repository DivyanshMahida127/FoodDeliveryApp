class City < ApplicationRecord
  has_many :areas
  has_many :restaurants
  belongs_to :state
end