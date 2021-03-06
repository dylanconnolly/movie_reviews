class MovieDbService
    
    def self.search_movies(search, page=1)
        get_json("search/movie?query=#{search}&page=#{page}&")
    end
    
    def self.get_movie(movie_id)
        get_json("movie/#{movie_id}?")
    end

    private
        
    def self.connection
        Faraday.new("https://api.themoviedb.org/3/") do |f|
        end
    end

    def self.get_json(uri)
        response = connection.get("#{uri}api_key=#{ENV["THE_MOVIE_DB_API_KEY"]}")
        json = JSON.parse(response.body, symbolize_names: true)
        if json[:success] == false
            raise "Error with The Movie Database API service -- #{json[:status_message]}"
        else
            json
        end
    end
end