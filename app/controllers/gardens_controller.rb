class GardensController < ApplicationController
     skip_before_action :authenticate_user!, only: [:index, :show]

  def index

    @gardens = Garden.all
    if params[:q].present?
      @gardens = @gardens.near(params[:q], 20)
    end

    if params[:pool].present?
      @gardens = @gardens.where(pool: true)
    end

    if params[:barbecue].present?
      @gardens = @gardens.where(barbecue: true)
    end

    if params[:green_area].present?
      @gardens = @gardens.where(green_area: true)
    end

    if params[:capacity].present?
      @gardens = @gardens.where("capacity >= ?", params[:capacity])
    end

    @markers = @gardens.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude
      }
    end
  end

  def show
    @garden = Garden.find(params[:id])
    @review = Review.new
    @booking = Booking.new

    @markers = [{
      lat: @garden.latitude,
      lng: @garden.longitude
    }]

    @reviews = @garden.reviews
  end

  def new
    @garden = Garden.new
  end

  def create
    @user = current_user
    @garden = Garden.new(garden_params)
    @garden.user = @user
    # if @garden.save
    #   redirect_to garden_path(@garden)
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
  end

  private

  def garden_params
    params.require(:garden).permit(:title, :description, :location, :price, :capacity, :barbecue,
   :pool, :green_area, photos:[])
  end
end

