class Review < ApplicationRecord
  # associations
  belongs_to :restaurant # creates a method review.restaurant

  # validations
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  RATINGS = (0..5)
  validates :rating, inclusion: { in: RATINGS }
end
# Review::RATINGS
