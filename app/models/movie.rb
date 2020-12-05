class Movie
    attr_reader :id, :title, :directors, :imdb_id, :release_date, :overview, :poster_path, :runtime, :genre, :rated, :main_actors

    def initialize(movie_db_data, open_movie_db_data)
        @id = movie_db_data[:id]
        @title = movie_db_data[:title]
        @imdb_id = movie_db_data[:imdb_id]
        @release_date = movie_db_data[:release_date]
        @overview = movie_db_data[:overview]
        @backdrop_path = movie_db_data[:backdrop_path]
        @poster_path = movie_db_data[:poster_path]
        @directors = open_movie_db_data[:Director]
        @runtime = open_movie_db_data[:Runtime]
        @genre = open_movie_db_data[:Genre]
        @rated = open_movie_db_data[:Rated]
        @main_actors = open_movie_db_data[:Actors]
    end

    def year
        if @release_date == '' || @release_date == nil
            ""
        else
            @release_date.split('-')[0]
        end
    end

    def backdrop_path
        if @backdrop_path == nil
            "image_placeholder.jpg"
        else
            "https://image.tmdb.org/t/p/w1280/#{@backdrop_path}"
        end
    end
end