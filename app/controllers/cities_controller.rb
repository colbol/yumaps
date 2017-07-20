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
<<<<<<< HEAD
    @city = City.find(params[:id])

    @city.update_attributes(city_params)
    redirect_to city_show_path(current_city.id)  # cities_path
  end


=======

    @city = City.find(params[:id])

    @ciy.update_attributes(user_params)
    redirect_to city_path
  end

>>>>>>> 76891cd3ef3ca6fdc5e86488dcaf598ae668c3eb
  def show
    @city = City.find(params[:id])
    @tag = Tag.new
    @tags = Tag.all
  end

  private

  def city_params
      params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end


   def tag _params
      params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end
end
