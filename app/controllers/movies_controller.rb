class MoviesController < ApplicationController

    def show
        @movie = MovieFacade.new.movie_details(params[:id])
    end
end