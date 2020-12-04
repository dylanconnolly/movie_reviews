# Movie Reviews

This is a Rails application which consumes two free movie APIs  ([The Movie Database](https://www.themoviedb.org/) and [The Open Movie Database](http://www.omdbapi.com/)) and aggregates the information for the user. Users can search for a movie title and be presented with a list of all of the search results. Users can click on a specific movie from these search results to view greater detail about the given movie.


# Set Up

1. Clone this repo: `git clone git@github.com:dylanconnolly/movie_reviews.git`
1. Install dependencies

   It is suggested you use [Bundler](https://bundler.io/) to install the dependencies
   
   Once you have Bundler, run `bundle install` in the root of the directory
   
1. Create, migrate, and seed the database: `rake db:{create,migrate,seed}`
  
1. Run `bundle exec figaro install`

   This will create a `application.yml` file in the `config/` folder of the project

1. Add the API Keys provided for the two API services to the `config/application.yml` file like so:

    ```
    THE_MOVIE_DB_API_KEY: "paste_key_here"
    OPEN_MOVIE_DB_API_KEY: "paste_key_here"
    ```
    *Do not change the variable name and ensure the API Keys are surrounded by quotes.*
  
1. Start the rails server and navigate to the homepage

   `rails s` and navigate to `localhost:3000` in your browser.




