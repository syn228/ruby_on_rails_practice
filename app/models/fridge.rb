class Fridge < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :kitchens
  has_many :users, through: :kitchens

  validates :name, presence: true
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }
end
