class PlaySessionsController < ApplicationController

    def index
        play_sessions = PlaySession.all
        render json: play_sessions
    end

    def show
        play_session = PlaySession.find(params[:id])
        render json: play_session
    end

    def create
        play_session = PlaySession.create(play_session_params)
        render json: play_session
    end

    def update
        play_session = PlaySession.find(params[:id])
        play_session.update(play_session_params)
        render json: play_session
    end

    def destroy
        play_session = PlaySession.find(params[:id])
        play_session.destroy
        render json: play_session
    end

    private 
    
    def play_session_params
        params.permit(:sender_id, :receiver_id, :is_accepted, :game_id, :rejected, :time)
    end
end
