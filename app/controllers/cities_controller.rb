class CitiesController < ApplicationController
  def index
     @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.save!
  end

  def show
    @city = City.find(params[:id])
  end

  private

  def city_params
      params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end
end
