class SearchFacade

    def self.results(search)
        response = MovieDbService.search_movies(search)
        
        SearchResults.new(response)
    end
end