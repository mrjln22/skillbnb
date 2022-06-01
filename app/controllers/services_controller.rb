class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to services_path
  end

  private

  def service_params
    params.require(:service).permit(:skill_name, :price_per_hour, :availability, :photo)
  end
end
