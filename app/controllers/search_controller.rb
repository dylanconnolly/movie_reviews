class SearchController < ApplicationController

    def index
        @search_results = SearchFacade.results(params[:title])
    end
end
