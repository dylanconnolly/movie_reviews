class SearchController < ApplicationController

    def index
        @search_facade = SearchFacade.new(params[:title])
    end
end
