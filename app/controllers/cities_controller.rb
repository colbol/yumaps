require 'gon'
require 'open-uri'
require 'json'

class CitiesController < ApplicationController
  def show
    # Not sure where we use this
    @city = City.find(params[:id])
    # Opens the file from amazon server which we use in the map partial with the addsource
    filepath = "https://s3.us-east-2.amazonaws.com/yumaps/uploads/montreal.geojson"
    file = open(filepath)
    gon.json = JSON.parse(file.first)
    #Sends the tags to the map partial for the filter feature
    gon.tags = Tag.all
    gon.district = District.all
  end

  def fetch_name
    @name = params[:name]
    @district_index = params[:district_index]
    @tags = Tag.all
    @tag = Tag.new

    @district_tag = []
    @top = []

    @tags.each do |tags|
       @district_tag.push(tags) if tags['name'] == @name
    end
    # check if really most popular 20 tags
    @district_tag.sort { |a, b| a.votes.count <=> b.votes.count }.last(20).each do |tag|
      data = {}
      data[:name] = tag.content
      data[:votes] = tag.votes.count
      @top << data
    end
    @top = @top.reverse
  end

  private

  def city_params
    params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end

end
