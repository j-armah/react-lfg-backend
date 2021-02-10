class UsersController < ApplicationController

    before_action :authorize, only: [:profile]

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_update_params)
        render json: user
      end

    def profile
        render json: @user
    end
    

    private 

    def user_update_params
        params.permit(:username, :name, :avatar, :bio, :discord, :lfg)
    end
end
