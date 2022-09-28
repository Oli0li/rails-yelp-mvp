class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:create]

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_path(@restaurant) }
        format.json
      else
        format.html { render "restaurants/show", status: :unprocessable_entity }
        format.json
      end
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
