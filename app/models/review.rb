class Review < ApplicationRecord
  belongs_to :restaurant

  # validates_associated :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: 0..5 }
end
