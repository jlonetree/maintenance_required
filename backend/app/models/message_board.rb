class MessageBoard < ApplicationRecord
    has_many :messages
    has_many :usernames, through: :messages
end
