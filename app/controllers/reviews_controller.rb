class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_reviews_path
    else
      render :new
    end

    def index
      @reviews = Review.all
    end

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
