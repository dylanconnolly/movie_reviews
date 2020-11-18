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

    def pagination
        if current_page <= 5
            (1..(lesser_of_two(10, total_pages)))
        elsif current_page > 5 && current_page < (total_pages-4)
            ((current_page-5)..(current_page+4))
        elsif current_page >= (total_pages-5)
            (greater_of_two(1, (total_pages-10))..total_pages)
        end
    end

    private

    def response
        if @page
            @response ||= MovieDbService.search_movies(@query, @page)
        else
            @response ||= MovieDbService.search_movies(@query)
        end
    end

    def lesser_of_two(num1, num2)
        return num1 if num1 < num2
        num2
    end

    def greater_of_two(num1, num2)
        return num1 if num1 > num2
        num2
    end
end