class ResultsController < ApplicationController
  def index
    # PgSearch::Multisearch.rebuild(City)
    # PgSearch::Multisearch.rebuild(Country)
    @pg_search_documents = City.search_city(params[:query])
  end

  def empty?
    City.search_city(params[:query]).empty? || City.search_city(params[:query])[0] == ""
  end
end
