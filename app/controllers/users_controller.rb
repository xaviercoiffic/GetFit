class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @current_user = current_user
    @users = User.all
    @next_booking = current_user.bookings.where("date >= ?", Date.today).order(:date).first
  end

  def show
    @reviews = Review.all
    @current_user = current_user
    @actual_user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
    @packages = @user.packages
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "user not found"
    redirect_to users_path
  end

  def user_params
    params.require(:user).permit( :email, :password, :password_confirmation)
  end
end
