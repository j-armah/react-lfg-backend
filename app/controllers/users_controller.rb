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

    def profile
        render json: @user
    end
end
