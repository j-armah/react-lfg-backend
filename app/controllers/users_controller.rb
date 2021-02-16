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
        # if params[:avatar].instance_of?(String)
            user.update(user_update_params)
        #     render json: user
        # else
            
            # imageUploaded = Cloudinary::Uploader.upload(params[:avatar])
            # # byebug
            # user_params_new = user_update_params
            # user_params_new[:avatar] = imageUploaded["url"]
            # user.update(user_params_new)
            render json: user
        # end
      end

    def profile
        render json: @user
    end
    

    private 

    def user_update_params
        params.permit(:username, :name, :avatar, :bio, :discord, :lfg)
    end
end
