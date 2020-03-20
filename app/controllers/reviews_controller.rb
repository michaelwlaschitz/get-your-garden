class ReviewsController < ApplicationController

  def create
    @garden = Garden.find(params[:garden_id])
    @review = Review.new(review_params)
    @review.garden = @garden
    if @review.save
      redirect_to garden_path(@garden)
    else
      render 'gardens/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end  end
end
