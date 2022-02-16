class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese italian japanese french belgian)
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY,
                                    message: '%{value} is not a valid category' }
end
