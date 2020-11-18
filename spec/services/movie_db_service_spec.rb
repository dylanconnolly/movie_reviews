require 'rails_helper'

describe "movie database service" do
    it "should return json response with first page of results based on movie title" do

        service = MovieDbService.new

        response = service.search_movies("Spiderman")

        expect(response[:results]).to_not eq([])
        expect(response[:results].first[:title]).to eq("Spider-Man")
        expect(response[:page]).to eq(1)

        service = MovieDbService.new

        response = service.search_movies("The man from uncle")

        expect(response[:results]).to_not eq([])
        expect(response[:total_results]).to eq(2)
        expect(response[:page]).to eq(1)
    end

    it "should allow an optional parameter of page to retrieve more results if they exist" do

        service = MovieDbService.new

        response = service.search_movies("Spiderman", 2)

        expect(response[:results]).to_not eq([])
        expect(response[:page]).to eq(2)
    end 

    it "should return a successful response with an empty results array if movie title does not return results" do

        service = MovieDbService.new

        response = service.search_movies("alkshfk")

        expect(response[:results]).to eq([])
        expect(response[:total_results]).to eq(0)
    end

    it "should return a response with details of movie for given movie_id" do

        service = MovieDbService.new

        response = service.get_movie(557)

        expect(response.keys.length).to be > 6
        expect(response[:title]).to eq('Spider-Man')
        expect(response[:release_date]).to eq("2002-05-01")
        expect(response[:overview]).not_to be_empty
    end
end