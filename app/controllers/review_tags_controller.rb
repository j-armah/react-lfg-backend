class ReviewTagsController < ApplicationController

    def index
        review_tags = ReviewTag.all
        render json: review_tags
    end

    def show
        review_tag = ReviewTag.find(params[:id])
        render json: review_tag
    end

    def create
        review_tag = ReviewTag.create(review_tag_params)
        render json: review_tag
    end

    def destroy
        review_tag = ReviewTag.find(params[:id])
        review_tag.destroy
        render json: review_tag
    end

    private
    
    def review_tag_params
        params.permit(:review_id, :tag_id)
    end
end
