class Bookmark < ApplicationRecord
belongs_to :movie, dependent: :destroy
belongs_to :list

validates :comment, length: { minimum: 6 }

validates :movie_id, uniqueness: { scope: :list_id }
# validates :list_id, uniqueness: { scope: :movie_id }

# validates_associated :movie
# validates_associated :list
end


# [X] A bookmark must be linked to a movie and a list,
  # [-] and the [movie, list] pairings should be unique.
# [X] The comment of a bookmark cannot be shorter than 6 characters.
