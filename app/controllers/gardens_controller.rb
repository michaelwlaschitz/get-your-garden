class GardensController < ApplicationController
  def index
  end

  def new
    @garden = Garden.new
  end

  def create
    @user = current_user
    @garden = Garden.new(garden_params)
    @user = @garden.user
    @garden.save
   # re_direct to garden_path(@garden)
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def garden_params
    params.require(:garden).permit(:title, :description, :location, :price, :capacity, :barbecue,
   :pool, :green_area, photos: [])
  end
end

