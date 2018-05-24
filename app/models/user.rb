class User < ApplicationRecord
  has_many :kitchens
  has_many :fridges, through: :kitchens
  has_many :foods, through: :fridges

  validates :name, presence: true
end
