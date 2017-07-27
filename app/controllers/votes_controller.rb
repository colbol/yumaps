class VotesController < ApplicationController
  def index
    @votes = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(vote_params)
    @vote.save!
  end

  def show
    @vote = Vote.find(params[:id])
  end

    private

  def vote_params
    params.require(:vote).permit(:ip, :tag_id, :count)
  end

end
