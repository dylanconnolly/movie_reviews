class MovieOverview
    attr_reader :id, :title, :release_date, :overview, :backdrop_path

    def initialize(movie_db_data)
        @id = movie_db_data[:id]
        @title = movie_db_data[:title]
        @release_date = movie_db_data[:release_date]
        @overview = movie_db_data[:overview]
        @backdrop_path = movie_db_data[:backdrop_path]
    end

    def short_description
        @overview.truncate(150, separator: ' ')
    end

    def year
        if @release_date == '' || @release_date == nil
            ""
        else
            @release_date.split('-')[0]
        end
    end
end