require 'rails_helper'

describe Movie, type: :model do

    it "get_movie_votes method" do

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

        expect(movie.get_movie_votes.count).to eq(8)
    end
end