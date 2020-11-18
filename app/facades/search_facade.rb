class SearchFacade
    attr_reader :query

    def initialize(search, page)
        @query = search
        @page = page
        movie_overviews
    end

    def movie_overviews
        @mapped ||= response[:results].map do |movie_info|
            p "I'm mapping over movies right now....."
            MovieOverview.new(movie_info)
        end
    end

    def current_page
        response[:page]
    end

    def total_results
        response[:total_results]
    end
    
    def total_pages
        response[:total_pages]
    end

    # private

    def response
        if @page
            @response ||= MovieDbService.search_movies(@query, @page)
        else
            @response ||= MovieDbService.search_movies(@query)
        end
    end
end