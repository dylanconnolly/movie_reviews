class Movie
    attr_reader :id, :title, :director, :imdb_id, :release_date, :overview, :backdrop_path, :poster_path, :runtime, :genre, :rated

    def initialize(movie_db_data, open_movie_db_data)
        @id = movie_db_data[:id]
        @title = movie_db_data[:title]
        @imdb_id = movie_db_data[:imdb_id]
        @release_date = movie_db_data[:release_date]
        @overview = movie_db_data[:overview]
        @backdrop_path = movie_db_data[:backdrop_path]
        @poster_path = movie_db_data[:poster_path]
        @director = open_movie_db_data[:Director]
        @runtime = open_movie_db_data[:Runtime]
        @genre = open_movie_db_data[:Genre]
        @rated = open_movie_db_data[:Rated]
    end

    def year
        if @release_date == '' || @release_date == nil
            ""
        else
            @release_date.split('-')[0]
        end
    end
end