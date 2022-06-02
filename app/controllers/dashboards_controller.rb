class DashboardsController < ApplicationController
  def index
    @bookings = current_user.bookings_as_teacher
    @student_booking = Booking.where(user: current_user)
    @services = Service.where(user: current_user)
  end
end
