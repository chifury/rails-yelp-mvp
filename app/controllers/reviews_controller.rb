class ReviewsController < ApplicationController

  def new
    # only for the form (we need both the review AND restaurant)
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # raise
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "new", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
