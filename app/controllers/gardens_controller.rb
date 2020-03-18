class GardensController < ApplicationController
     skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @gardens = Garden.all
  end

  def new
    @garden = Garden.new
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def create
    @user = current_user
    @garden = Garden.new(garden_params)
    @garden.user = @user
    if @garden.save
      redirect_to garden_path(@garden)
    else
      render :new
    end
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

