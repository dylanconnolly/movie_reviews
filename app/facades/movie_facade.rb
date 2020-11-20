class MovieFacade
    attr_reader :movie_id

    def initialize(movie_id)
        @movie_id = movie_id
    end

    def movie
        movie_db_response = movie_db_details
        open_movie_response = open_movie_details(movie_db_response[:imdb_id])
        
        @movie ||= Movie.new(movie_db_response, open_movie_response)
    end

    def vote_counter
        @vote_counter = VoteCounter.new(@movie.title, @movie.id)
    end

    private

    def movie_db_details
        @movie_db_response ||= MovieDbService.get_movie(@movie_id)
    end
    
    def open_movie_details(movie_imdb_id)
        @open_movie_response ||= OpenMovieDbService.get_movie(movie_imdb_id)
    end
end