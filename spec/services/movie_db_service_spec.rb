require 'rails_helper'

describe "movie database service" do
    it "should be able to query database for search results based on movie title" do
        
        service = MovieDbService.new

        response = service.search_movies("Spiderman")

    end
end