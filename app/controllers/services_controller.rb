class ServicesController < ApplicationController
  def index
    @services = Service.all
    if params [:search].blank?
      redirect_to services_path
    else
      @input_searchbar = params [:search].downcase
      @results = Services.all.where("LIKE :search, search:", "%{@input_searchbar}%")
    end
  end

  def new
    @service = Service.new
  end

  def show
    @service = Service.find(params[:id])
    @booking = Booking.new
    @teacher = User.find(@service.user_id)
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

  def search
    if params [:search].blank?
      redirect_to services_path
    else
      @input_searchbar = params [:search].downcase
      @results = Services.all.where("LIKE :search, search:", "%{@input_searchbar}%")
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
