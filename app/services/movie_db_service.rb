class MovieDbService

    def self.connection
        Faraday.new("https://api.themoviedb.org/3/") do |f|
        end
    end

    def self.get_json(uri)
        # require 'pry'; binding.pry
        response = connection.get("#{uri}api_key=#{ENV["THE_MOVIE_DB_API_KEY"]}")
        JSON.parse(response.body, symbolize_names: true)
    end

    def self.search_movies(search, page=1)
        get_json("search/movie?query=#{search}&page=#{page}&")
    end
end