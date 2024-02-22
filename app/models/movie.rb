class Movie < ApplicationRecord
  has_many :bookmarks

  validates_associated :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end

# [X] A movie must have a unique title and an overview.

# [X] A bookmark must be linked to a movie and a list,
  # [-] and the [movie, list] pairings should be unique.


