class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def update
    @tag = Vote.find(params[:id])
    if params[:type] == "upvote"
      @vote.countdown = @vote.count + 1
    else
      @vote.countdown = @vote.countdown - 1
    end
    if @vote.save
      respond_to do |format|
        format.html { redirect_to vote_path(@vote) }
        format.js  # <-- will render `app/views/votes/update.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'votes/index' }
        format.js  # <-- idem
      end
    end
  end


  def create
    @tag = Tag.find_by({content: params[:tag][:content], district_index: params[:tag][:district_index]})
    if @tag.nil?
     @tag = Tag.new(tag_params)
     @tag.district = District.find_by(name: params[:tag][:name])
     @tag.save
   end
   Vote.find_or_create_by({tag_id: @tag.id, ip: request.remote_ip})
   redirect_to cities_path
 end

 private

  def tag_params
    params.require(:tag).permit(:name, :district_index, :content)
  end

end


