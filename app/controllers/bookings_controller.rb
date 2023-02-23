class BookingsController < ApplicationController
  before_action :set_user
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = @user.bookings
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @booking = @user.bookings.build
    render :new, locals: { user: @user, booking: @booking }
  end  

  def edit
  end

  def create
    @user = User.find(params[:user_id])
    @booking = @user.bookings.new(booking_params)
  
    if @booking.save
      redirect_to confirmation_booking_path(@booking, user_id: @booking.user_id)
    else
      render :new
    end
  end
  

  def update
    if @booking.update(booking_params)
      redirect_to user_booking_path(@user, @booking), notice: "Booking was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to user_bookings_path(@user), notice: "Booking was successfully destroyed."
  end

  def confirmation
    @booking = Booking.find(params[:id])
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_booking
    @booking = @user.bookings.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :time, :duration, :user_id, :package_id, :specialities, :status)
  end
end
