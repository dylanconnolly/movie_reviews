class MovieVotesController < ApplicationController

    def create
        movie_vote = MovieVote.new(vote_params)
        
        if movie_vote.save
            @vote_counter = VoteCounter.new(movie_vote.title, params[:movie_id])
            respond_to do |format|
                format.html { redirect_back }
                format.js { render "/movies/vote" }
            end
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