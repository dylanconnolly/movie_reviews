class Movie
    attr_reader :id, :title, :director, :imdb_id, :release_date, :overview

    def initialize(movie_db_data, open_movie_db_data)
        @id = movie_db_data[:id]
        @title = movie_db_data[:title]
        @director = open_movie_db_data[:Director]
        @imdb_id = movie_db_data[:imdb_id]
        @release_date = movie_db_data[:release_date]
        @overview = movie_db_data[:overview]
    end

    def get_movie_votes
        MovieVote.where(title: @title)
    end


end