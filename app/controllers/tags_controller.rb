class TagsController < ApplicationController

    def index
        tags = Tag.all
        render json: tags
    end

    def show 
        tag = Tag.find(params[:id])
        render json: tag
    end

    def create
        tag = tag.create(tag_params)
        render json: tag
    end

    private

    def tag_params
        params.permit(:name)
    end
end
