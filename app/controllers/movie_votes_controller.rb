class MovieVotesController < ApplicationController

    def create
        movie_vote = MovieVote.new(vote_params)

        if movie_vote.save
            redirect_to "/movies/#{params[:movie_id]}"
        else
            flash[:error] = "An error occurred."
            render template: "movies/show"
        end
    end

    private

    def vote_params
        params.permit(:title, :upvote, :downvote)
    end
end