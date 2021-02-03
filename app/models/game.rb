class Game < ApplicationRecord
    has_many :user_games
    has_many :users, through: :user_games

    has_many :play_sessions
    # belongs_to :play_session
end
