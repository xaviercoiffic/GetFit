class PackagesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_package, only: [:show]
  before_action :set_user_package, only: %i[edit update destroy]
  def index
    @packages = Packages.all
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(package_params)
    @package.user = current_user
    if @package.save
      redirect_to @package, notice: "Package was succefully created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show

  end


  def destroy
    @package.destroy
    redirect_to package_path, status: :see_other
  end

  private

  def set_package
    @package = Package.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "Package not found"
    redirect_to packages_path
  end

  def package_params
    params.require(:package).permit(:title, :description, :price)
  end
end
