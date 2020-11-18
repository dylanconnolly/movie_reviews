class OpenMovieDbService

    def get_movie(imdb_id)
        get_json("&i=#{imdb_id}")
    end
    
    private

    def connection
        Faraday.new("http://www.omdbapi.com/") do |f|
        end
    end

    def get_json(uri)
        response = connection.get("?apikey=#{ENV["OPEN_MOVIE_DB_API_KEY"]}#{uri}")
        JSON.parse(response.body, symbolize_names: true)
    end
end