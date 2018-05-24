class Food < ApplicationRecord
  belongs_to :fridge
  has_many :users, through: :fridge

  validates :name, presence: true, uniqueness: true
  validates :expires_on, presence: true
  validate :check_expiration

  def check_expiration
    t=Time.new

    if(self.expiration_date < t)
      errors.add(:expiration_date, ":in the past... It's already expired! Don't EAT THAT")
    end

  end

  def expiration_date
    self.expires_on
  end

  def expiration_date=(date)
    self.expires_on=date
  end
end
