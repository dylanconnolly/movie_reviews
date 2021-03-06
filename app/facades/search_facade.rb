class SearchFacade
    include SearchHelper
    attr_reader :query

    def initialize(search, page)
        @query = search
        @page = page
        movie_overviews
    end

    def movie_overviews
        @mapped ||= movie_service_response[:results].map do |movie_info|
            MovieOverview.new(movie_info)
        end
    end

    def current_page
        movie_service_response[:page]
    end

    def total_results
        movie_service_response[:total_results]
    end
    
    def total_pages
        movie_service_response[:total_pages]
    end

    private

    def movie_service_response
        if @page
            @response ||= MovieDbService.search_movies(@query, @page)
        else
            @response ||= MovieDbService.search_movies(@query)
        end
    end
end