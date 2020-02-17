class Tent < ApplicationRecord
  belongs_to :user
  LEVEL = [1,2,3,4,5]
  has_many_attached :photos
  validates :title, :description, :capacity, :location, :price, presence: true
  validates :title, uniqueness: true
  validates :comfort_level, inclusion: { in: LEVEL }
end