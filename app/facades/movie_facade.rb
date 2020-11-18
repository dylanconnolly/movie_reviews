class MovieFacade

    def movie_details(movie_id)
        movie_db_response = movie_db_details(movie_id)
        open_movie_response = open_movie_details(movie_db_response[:imdb_id])

        Movie.new(movie_db_response, open_movie_response)
    end

    private

    def movie_db_details(movie_id)
        @movie_db_response ||= MovieDbService.get_movie(movie_id)
    end
    
    def open_movie_details(movie_imdb_id)
        @open_movie_response ||= OpenMovieDbService.get_movie(movie_imdb_id)
    end
end