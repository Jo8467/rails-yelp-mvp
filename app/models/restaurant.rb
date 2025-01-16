class Restaurant < ApplicationRecord
  # Associations
  has_many :reviews, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: {
    in: %w[chinese italian japanese french belgian],
    message: "%{value} is not a valid category"
  }
end
