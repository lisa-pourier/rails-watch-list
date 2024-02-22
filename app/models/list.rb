class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: true, uniqueness: true
end


# [X] A list must have a unique name.

# [X] A bookmark must be linked to a movie and a list,
  # [-] and the [movie, list] pairings should be unique.
