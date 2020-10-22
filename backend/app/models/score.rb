class Score < ApplicationRecord
    belongs_to :username
    belongs_to :paddle_game
end
