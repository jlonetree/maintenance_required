class Score < ApplicationRecord
    belongs_to :username
    belongs_to :paddle_game
    belongs_to :score_board
end
