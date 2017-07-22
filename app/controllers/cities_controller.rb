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

    @ciy.update_attributes(user_params)
    redirect_to city_path
  end


  def show
    @city = City.find(params[:id])
    @tag = Tag.new
    @tags = Tag.all
  end

  def fetch_name
    name = params[:name]
    @name = name
  end

  private

  def city_params
      params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end


   def tag _params
      params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end
end
