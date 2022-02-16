class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, presence: true
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: 0..5,
                                  message: 'please rate this restaurant between 0 and 5' }
  validates :rating, numericality: true
end
