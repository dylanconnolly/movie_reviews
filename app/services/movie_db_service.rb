class MovieDbService

    def connection
        Faraday.new("https://api.themoviedb.org/3/") do |f|
        end
    end

    def get_json(uri)
        response = connection.get("#{uri}api_key=#{ENV[THE_MOVIE_DB_API_KEY]}")
        JSON.parse(response.body, symbolize_names: true)
    end

    def search_movie(search)
        get_json("/search/movies?query=#{search}&")
    end
end