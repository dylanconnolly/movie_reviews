class MoviesController < ApplicationController

    def show
        @movie_facade = MovieFacade.new(params[:id])
    end
end