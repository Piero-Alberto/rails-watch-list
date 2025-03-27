class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }, allow_nil: true
end
