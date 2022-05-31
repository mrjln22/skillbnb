class ServicesController < ApplicationController
  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  private

  def service_params
    params.require(:service).permit(:skill_name, :price_per_hour, :availability)
  end
end
