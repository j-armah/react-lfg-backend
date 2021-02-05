class UserGamesController < ApplicationController

    def index 
        user_games = UserGame.all
        render json: user_games
    end

    def show 
        user_game = UserGame.find(params[:id])
        render json: user_game
    end

    def create
        user_game = UserGame.create(user_game_params)
        render json: user_game
    end

    def update
        user_game = UserGame.find(params[:id])
        user_game.update(user_game_params)
        render json: user_game
    end

    private

    def user_game_params
        params.permit(:user_id, :game_id, :details, :image, :server, :platform, :level)
    end
end
