class BookingsController < ApplicationController

  def index
    @bookings = current_user.host_bookings.order(created_at: :asc)
  end

  def create
    @user = current_user #grabing the current user (helper method given be devise gem)
    @booking = Booking.new(booking_params) # creating a booking instance passing the strong params of the booking
    @garden = Garden.find(params[:garden_id]) #find the gardin id in the url
    @booking.garden = @garden #assigning the garden from the url as the garden of the booking we are creating
    @booking.user = @user # assigning the current user as a user of the booking we are creating
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to bookings_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time, :status)
  end
end
