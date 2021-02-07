class ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(review_params)
        render json: review
    end

    def update
        review = Review.find(params[:id])
        review.update(review_params)
        render json: review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy
        render json: review
    end

    private 
    
    def review_params
        params.permit(:reviewer_id, :reviewee_id, :contents, :rating, :play_session_id)
    end
end
