class Message < ApplicationRecord
    belongs_to :username
    belongs_to :message_board
end
