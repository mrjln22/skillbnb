class DashboardsController < ApplicationController
  def index
    @bookings = current_user.bookings_as_teacher
  end
end
