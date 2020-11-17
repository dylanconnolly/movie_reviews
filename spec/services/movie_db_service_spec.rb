require 'rails_helper'

describe "movie database service" do
    it "should return json of response with results based on movie title" do
        
        service = MovieDbService.new

        response = service.search_movies("Spiderman")

        expect(response[:results]).to_not eq([])
        expect(response[:results].first[:title]).to eq("Spider-Man")

        response = service.search_movies("The man from uncle")

        expect(response[:results]).to_not eq([])
        expect(response[:total_results]).to eq(2)
    end

    it "should return a successful response with an empty results array if movie title does not return results" do

        service = MovieDbService.new
        
        response = service.search_movies("alkshfk")

        expect(response[:results]).to eq([])
        expect(response[:total_results]).to eq(0)
    end
end