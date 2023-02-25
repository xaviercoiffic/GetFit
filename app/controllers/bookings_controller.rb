class BookingsController < ApplicationController
  before_action :set_user
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = current_user.bookings.includes(:package => :user)
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @package = Package.find(params[:package_id])
    @booking = @user.bookings.build(package: @package)

    render :new, locals: { user: @user }
  end 

  def edit
  end

 
  
  def create
      @user = User.find(params[:user_id])
      @booking = @user.bookings.build(booking_params)
      @booking.user_id = current_user.id

  
      if @booking.save
        redirect_to confirmation_booking_path(@user, @booking), notice: "Booking created successfully"
      else
        render :new, locals: { user: @user }
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
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(@user), notice: "Booking was successfully destroyed."
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
