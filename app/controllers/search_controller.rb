class SearchController < ApplicationController

    def index
        @search_facade = SearchFacade.new(params[:title], params[:page])
    end
end
