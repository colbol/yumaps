class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def create
    @tag = Tag.find_by({content: params[:tag][:content], district_index: params[:tag][:district_index]})
    # if the tag doesn't exist, create it for the district
    if @tag.nil?
     @tag = Tag.new(tag_params)
     @tag.save
    end

    Vote.find_or_create_by({tag_id: @tag.id, ip: request.remote_ip})
    # redirect_to cities_path
    @tag = Tag.new
    @district_index = params[:tag][:district_index]
    @name = params[:tag][:name]
    @tags = Tag.all

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

    render 'cities/fetch_name', format: :js
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :district_index, :content, :district_id)
  end

end


