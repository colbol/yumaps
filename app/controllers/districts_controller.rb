class DistrictsController < ApplicationController
  def new
    @district = District.new
  end

  def create
   @district = Districe.new(district_params)
  end



  private

  def district_params
      params.require(:district).permit(:name, :city_id)
  end
end
