class Game < ApplicationRecord
    has_many :user_games
    has_many :users, through: :user_games

    belongs_to :play_session
end
