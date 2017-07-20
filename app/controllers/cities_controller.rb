class CitiesController < ApplicationController
  def index
     @cities = City.all
     @tag = Tag.new
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    @city.save!
  end

  def update
    @city = City.find(params[:id])

    @city.update_attributes(city_params)
    redirect_to city_show_path(current_city.id)  # cities_path
  end


  def show
    @city = City.find(params[:id])
  end

  private

  def city_params
      params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end
end
