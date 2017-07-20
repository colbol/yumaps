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
    @tag= Tag.new(tag_params)
    raise
    @tag.save
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :district_index, :content)
  end

end


