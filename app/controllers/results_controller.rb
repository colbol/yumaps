class ResultsController < ApplicationController
  def index
    # PgSearch::Multisearch.rebuild(City)
    # PgSearch::Multisearch.rebuild(Country)
    @pg_search_documents = City.search_city(params[:query])
  end
end
