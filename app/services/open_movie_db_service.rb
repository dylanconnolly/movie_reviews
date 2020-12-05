class OpenMovieDbService

    def self.get_movie(imdb_id)
        get_json("&i=#{imdb_id}")
    end
    
    private

    def self.connection
        Faraday.new("http://www.omdbapi.com/") do |f|
        end
    end

    def self.get_json(uri)
        response = connection.get("?apikey=#{ENV["OPEN_MOVIE_DB_API_KEY"]}#{uri}")
        json = JSON.parse(response.body, symbolize_names: true)
        
        if json[:Response] == "False"
            raise "Error with Open Movie Database API service -- #{json[:Error]}"
        else
            json
        end
    end
end