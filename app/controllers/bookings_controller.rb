class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @booking = Booking.new
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path
  end
  
  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end
end
