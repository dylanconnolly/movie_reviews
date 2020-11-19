require 'rails_helper'

describe Movie, type: :model do

    it "methods" do

        movie_data = {
        id: "1",
        title: "Test Movie",
        director: "Name",
        imdb_id: "1",
        release_date: "2020-20-20",
        overview: "String"
        }

        movie = Movie.new(movie_data, {})

        5.times do
            MovieVote.create(title: movie.title, upvote: 1)
        end

        3.times do
            MovieVote.create(title: movie.title, downvote: 1)
        end

        4.times do
            MovieVote.create(title: "Different movie", upvote: 1)
        end

        expect(movie.get_upvotes).to eq(5)
        expect(movie.get_downvotes).to eq(3)
    end
end