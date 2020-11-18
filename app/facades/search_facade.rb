class SearchFacade

    def self.results(search)
        response ||= MoviewDbService.new.search_movies(search)
        
        SearchResults.new(response)
    end
end