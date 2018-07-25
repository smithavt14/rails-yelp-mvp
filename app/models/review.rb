class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5],
    message: "You're a silly bitch, 0 - 5 please." }
  validates :rating, numericality: { only_integer: true }
end
