class MovieOverview
    attr_reader :id, :title, :release_date, :overview

    def initialize(movie_db_data)
        @id = movie_db_data[:id]
        @title = movie_db_data[:title]
        @release_date = movie_db_data[:release_date]
        @overview = movie_db_data[:overview]
    end
end