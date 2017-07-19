class ResultsController < ApplicationController
  def index
    PgSearch::Multisearch.rebuild(City)
    PgSearch::Multisearch.rebuild(Country)
    @pg_search_documents = PgSearch.multisearch(params[:query])
  end
end
