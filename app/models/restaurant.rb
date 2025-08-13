class Restaurant < ApplicationRecord
  # associations
  # dependent: :destroy -> destroy other instances that are dependent on it
  has_many :reviews, dependent: :destroy # creates a method restaurant.reviews

  # validations
  # validates :column_name, whatever_validation
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }
end
# Restaurant::CATEGORIES
