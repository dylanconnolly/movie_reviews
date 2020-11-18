require 'rails_helper'

describe "open_movie_db_service" do
    it "should return movie details for a single movie based off imdb id" do

        response = OpenMovieDbService.get_movie("tt0145487")

        expect(response[:Title]).to eq("Spider-Man")
        expect(response[:Director]).to eq("Sam Raimi")
        expect(response[:Ratings].length).to eq(3)
    end
end