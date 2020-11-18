class SearchFacade

    def self.results(search)
        @response ||= MovieDbService.new.search_movies(search)
        
        SearchResults.new(@response)
    end
end