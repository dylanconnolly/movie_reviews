class SearchResults
    attr_reader :page, :total_results, :total_pages, :movie_overviews

    def initialize(movie_db_response)
        @page = movie_db_response[:page]
        @total_results = movie_db_response[:total_results]
        @total_pages = movie_db_response[:total_pages]
        @movie_results = movie_db_response[:results]
    end

    def movie_overviews
        @mapped ||= @movie_results.map do |movie_info|
            p "I'm mapping over movies right now....."
            MovieOverview.new(movie_info)
        end
    end
end