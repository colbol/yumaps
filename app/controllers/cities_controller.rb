require 'gon'

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
    @votes = Vote.all
    @name = fetch_name

    @district_tag = []
    @data = {}
    tag_vote = []

    @tags.each do |tags|
       @district_tag.push(tags) if tags['name'] == @name
    end

    @district_tag.each do |tag|
      @data[tag.content] = tag.votes.count
    end
    @top = @data.sort_by { |content, votes| - votes }
    gon.tags = @tags
  end

  def fetch_name
    @name = params[:name]
    @tags = Tag.all

    @district_tag = []
    @top = []
    tag_vote = []

    @tags.each do |tags|
       @district_tag.push(tags) if tags['name'] == @name
    end
    # check if really most popular 20 tags
    @district_tag.sort { |a, b| a.votes.count <=> b.votes.count }.first(20).each do |tag|
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


   def tag _params
      params.require(:city).permit(:name, :longitude, :latitude, :zoom, :country_id)
  end
end
