class SearchController < ApplicationController

    def index
        @search_results = SearchFacade.results(params[:title])
        require 'pry'; binding.pry
    end
end
