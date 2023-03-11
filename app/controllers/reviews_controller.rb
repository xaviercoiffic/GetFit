class ReviewsController < ApplicationController
  def new
    @instructor = User.find(params[:user_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to user_bookings_path(current_user)
    else
      flash[:alert] = "Something went wrong."
      render :new, booking_id: params[:booking_id], user_id: params[:user_id]
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id)
  end
end
