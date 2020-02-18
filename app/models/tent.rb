class Tent < ApplicationRecord
  belongs_to :user
  LEVEL = [1,2,3,4,5].freeze
  has_one_attached :photo_one
  has_one_attached :photo_two
  has_one_attached :photo_three
  validates :title, :description, :capacity, :location, :price, presence: true
  validates :title, uniqueness: true
  validates :comfort_level, inclusion:{in: LEVEL}
end
