class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end


  def


  def update
    @vote = Vote.find(params[:id])
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



  def show
        @vote = Vote.find(params[:id])
  end

    private

  def vote_params
    params.require(:vote).permit(:ip, :tag_id, :count)
  end

end

