require 'rails_helper'

describe "movie database service" do
    it "should return json of response with first page of results based on movie title" do

        response = MovieDbService.search_movies("Spiderman")

        expect(response[:results]).to_not eq([])
        expect(response[:results].first[:title]).to eq("Spider-Man")
        expect(response[:page]).to eq(1)

        response = MovieDbService.search_movies("The man from uncle")

        expect(response[:results]).to_not eq([])
        expect(response[:total_results]).to eq(2)
        expect(response[:page]).to eq(1)
    end

    it "should allow an optional parameter of page to retrieve more results if they exist" do

        response = MovieDbService.search_movies("Spiderman", 2)

        expect(response[:results]).to_not eq([])
        expect(response[:page]).to eq(2)
    end 

    it "should return a successful response with an empty results array if movie title does not return results" do

        response = MovieDbService.search_movies("alkshfk")

        expect(response[:results]).to eq([])
        expect(response[:total_results]).to eq(0)
    end
end