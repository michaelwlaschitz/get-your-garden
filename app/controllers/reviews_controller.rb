class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.save
    if @review.save
      flash[:alert] = "Review posted, thank you!"
      redirect_to bookings_path
    else
      render 'gardens/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
