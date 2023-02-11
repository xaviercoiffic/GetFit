class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.package_id = Booking.find(params[:booking_id]).package_id
    if @review.save
      redirect_to "/thankyou"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:booking_id, :user_id)
  end
end
