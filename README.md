# Movie Reviews

This is a Rails application which consumes two free movie APIs  ([The Movie Database](https://www.themoviedb.org/) and [The Open Movie Database](http://www.omdbapi.com/)) and aggregates the information for the user. Users can search for a movie title and be presented with a list of all of the search results. Users can click on a specific movie from these search results to view greater detail about the given movie.


# Set Up

1. Clone this repo: `git clone git@github.com:dylanconnolly/movie_reviews.git` and navigate into the root of the directory `cd movie_reviews`
1. Install dependencies

   It is suggested you use [Bundler](https://bundler.io/) to install the dependencies
   
   Once you have Bundler, run `bundle install` in the root of the directory
   
1. Create, migrate, and seed the database: `rake db:{create,migrate,seed}`
  
1. Run `bundle exec figaro install`

   This will create a `application.yml` file in the `config/` folder of the project

1. Add the API Keys provided for the two API services to the `config/application.yml` file like so:

    ```
    # Add configuration values here, as shown below.
    ...

    THE_MOVIE_DB_API_KEY: "paste_key_here"
    OPEN_MOVIE_DB_API_KEY: "paste_key_here"
    ```
    *The variable names __THE_MOVIE_DB_API_KEY__ and __OPEN_MOVIE_DB_API_KEY__ must not be changed. Ensure the API Keys are wrapped in quotes.*
  
1. Start the rails server and navigate to the homepage

   `rails s` and navigate to `localhost:3000` in your browser.
   
1. The database has been seeded with a few up and downvotes for the movies __Spider-Man: Into the Spider-verse__ and __The Dark Knight__ but you are free to explore all movies and vote on them as many times as you like. The upvote/downvote buttons are disabled after you've clicked on one until you refresh the page.

# Application Images

## Homepage
<img width="1437" alt="Screen Shot 2020-12-04 at 5 11 45 PM" src="https://user-images.githubusercontent.com/54859243/101227418-f9247180-3654-11eb-9737-163979b80ed1.png">

## Search Results

<img width="1373" alt="Screen Shot 2020-12-04 at 5 29 46 PM" src="https://user-images.githubusercontent.com/54859243/101227881-b2d01200-3656-11eb-8669-89e1f5696a54.png">

Hovering over a search results provides user with a brief overview of the movie's plot

<img width="670" alt="Screen Shot 2020-12-04 at 5 34 00 PM" src="https://user-images.githubusercontent.com/54859243/101227977-04789c80-3657-11eb-8f90-9b123569ae4a.png">

## Search Results Pagination

The search results page will display the first 20 results returned for the movie title provided by the user. If there are more than 20 results, the user will have the ability to sort through pages using buttons at the bottom of the page.

<img width="1428" alt="Screen Shot 2020-12-04 at 5 12 28 PM" src="https://user-images.githubusercontent.com/54859243/101228357-903ef880-3658-11eb-9b42-31e522d6eab3.png">

If a user query returns more than 10 pages, buttons on the page navigation bar at the bottom will cycle to always show the 10 nearest pages to the user's current page.

<img width="554" alt="Screen Shot 2020-12-04 at 5 44 47 PM" src="https://user-images.githubusercontent.com/54859243/101228442-f9267080-3658-11eb-8186-fd4b14144960.png">
<img width="559" alt="Screen Shot 2020-12-04 at 5 44 56 PM" src="https://user-images.githubusercontent.com/54859243/101228444-f9bf0700-3658-11eb-999e-17c94ac61c2d.png">
<img width="574" alt="Screen Shot 2020-12-04 at 5 45 04 PM" src="https://user-images.githubusercontent.com/54859243/101228445-fa579d80-3658-11eb-9d6d-a2aa4d39b19d.png">

## Movie Details

Clicking on a movie from the search results screen will take the user to that movie's detailed page where the user can see information such as director(s), actors and actressess starring in the film, runtime, genres, release date, as well as the number of upvotes or downvotes the movie has received on the site.

<img width="1387" alt="Screen Shot 2020-12-04 at 5 15 45 PM" src="https://user-images.githubusercontent.com/54859243/101228104-6fc26e80-3657-11eb-9d27-9d105d60c277.png">

## Upvoting/Downvoting

From the movie detail page, users have the ability to click one of two buttons. They can click a thumbs-up button to record an 'upvote' for the movie, or they can click a thumbs-down button to record a 'downvote' for the movie. These votes are stored in the database and the number of votes will update asynchronously on the page view when a user votes on a movie. In addition to this, the buttons will also become inactive after a user has voted on the page, disallowing them to vote multiple times without refreshing the page.

<img width="1276" alt="Screen Shot 2020-12-04 at 5 36 30 PM" src="https://user-images.githubusercontent.com/54859243/101228582-8ff32d00-3659-11eb-831e-dadfc522bc49.png">

<img width="1310" alt="Screen Shot 2020-12-04 at 5 36 40 PM" src="https://user-images.githubusercontent.com/54859243/101228596-9d101c00-3659-11eb-88e5-946d0736f7de.png">
