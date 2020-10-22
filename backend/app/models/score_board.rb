class ScoreBoard < ApplicationRecord
    has_many :scores
    has_many :usernames, through: :scores
end
