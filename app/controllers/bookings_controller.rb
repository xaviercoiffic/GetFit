class BookingsController < ApplicationController
  before_action :set_user
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  
  def index
    @bookings = current_user.bookings.includes(:package => :user).order(created_at: :desc)
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @package = Package.find(params[:package_id])
    @booking = @user.bookings.build(package: @package)

    render :new, locals: { user: @user }
  end 

  def create
    @user = User.find(params[:user_id])
    @booking = @user.bookings.build(booking_params)
    @booking.user_id = current_user.id
    @booking.status = "Active"

    if @booking.save
      redirect_to confirmation_booking_path(@user, @booking), notice: "Booking created successfully"
    else
      render :new, locals: { user: @user }
    end
  end


  def edit
    @package = Package.find(params[:package_id])
    @booking = Booking.find(params[:id])
    @booking.status = "Updated"
  end
  
  def update
    @package = Package.find(params[:package_id])
    @booking = Booking.find(params[:id])
  
    if @booking.update(booking_params)
      redirect_to confirmation_booking_path(@package.user, @booking)
    else
      render :edit
    end
  end
  

  def destroy
    @booking.update(status: "Cancelled")
    redirect_to user_bookings_path(@user), notice: "Booking was successfully canceled."
  end


  def cancel
    @booking = current_user.bookings.find(params[:id])
    @booking.update(status: "Cancelled")
  
    if request.referrer.include?("/bookings")
      redirect_to user_bookings_path(current_user)
    else
      redirect_to confirmation_booking_path(@user, @booking)
    end
  end
  

  def confirmation
    @user = User.find(params[:user_id])
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
    params.require(:booking).permit(:date, :time, :duration, :specialities, :package_id)
  end
end
