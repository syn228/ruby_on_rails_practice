class User < ApplicationRecord
  has_many :kitchens
  has_many :fridges, through: :kitchens
  has_many :foods, through: :fridges

  validates :name, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end
