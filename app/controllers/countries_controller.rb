class CountriesController < ApplicationController

  def index
     @countries = Country.all
  end


  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    @country.save
  end

  def show
    @city = City.find(params[:id])
  end

  private

  def country_params
      params.require(:county).permit(:name)
  end
end
