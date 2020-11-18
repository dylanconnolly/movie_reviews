require 'rails_helper'

describe MovieOverview, type: :model do
    it "validations" do
        
        api_data = {
            "popularity": 12.606,
            "id": 64202,
            "video": false,
            "vote_count": 117,
            "vote_average": 7.4,
            "title": "Batman Beyond: The Movie",
            "release_date": "1999-01-10",
            "original_language": "en",
            "original_title": "Batman Beyond: The Movie",
            "genre_ids": [
                16,
                28,
                10751,
                878
            ],
            "backdrop_path": "/qvHH190tlKmWH6uOz1cGpQnYY28.jpg",
            "adult": false,
            "overview": "Fueled by remorse and vengeance, a high schooler named Terry McGinnis revives the role of Batman. Under supervision of an elderly Bruce Wayne, he fights crime in a harsh futuristic Gotham.",
            "poster_path": "/7BCRuuuAVRzJbrm9IqvGaa12Lqo.jpg"
        }

        movie_overview = MovieOverview.new(api_data)

        expect(movie_overview.id).to eq(64202)
        expect(movie_overview.title).to eq("Batman Beyond: The Movie")
        expect(movie_overview.release_date).to eq("1999-01-10")
        expect(movie_overview.overview).to_not be(nil)
    end

    it "methods" do
        
        api_data = {
            "popularity": 12.606,
            "id": 64202,
            "video": false,
            "vote_count": 117,
            "vote_average": 7.4,
            "title": "Batman Beyond: The Movie",
            "release_date": "1999-01-10",
            "original_language": "en",
            "original_title": "Batman Beyond: The Movie",
            "genre_ids": [
                16,
                28,
                10751,
                878
            ],
            "backdrop_path": "/qvHH190tlKmWH6uOz1cGpQnYY28.jpg",
            "adult": false,
            "overview": "Fueled by remorse and vengeance, a high schooler named Terry McGinnis revives the role of Batman. Under supervision of an elderly Bruce Wayne, he fights crime in a harsh futuristic Gotham.",
            "poster_path": "/7BCRuuuAVRzJbrm9IqvGaa12Lqo.jpg"
        }

        movie_overview = MovieOverview.new(api_data)

        expect(movie_overview.short_description.length).to be < movie_overview.overview.length
        expect(movie_overview.short_description).to start_with("Fueled by remorse and vengeance")
        expect(movie_overview.year).to eq('1999')
    end
end