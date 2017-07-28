class ResultsController < ApplicationController
  def index
    # PgSearch::Multisearch.rebuild(City)
    # PgSearch::Multisearch.rebuild(Country)
    @pg_search_documents = City.search_city(params[:query]).first
    if @pg_search_documents
      redirect_to city_path(@pg_search_documents)
    else
      flash[:alert] = 'This city is currently not available.'
      redirect_to root_path
    end
  end

  def empty?
    City.search_city(params[:query]).empty? || City.search_city(params[:query])[0] == ""
  end
end
