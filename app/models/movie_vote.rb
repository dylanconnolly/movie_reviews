class MovieVote < ApplicationRecord
    validates_presence_of :title, :upvote, :downvote

end