class MovieVote < ApplicationRecord
    validates_presence_of :title, :upvote, :downvote

    def get_upvotes
        MovieVote.where(title: self.title, upvote: 1).count
    end

    def get_downvotes
        MovieVote.where(title: self.title, downvote: 1).count
    end
end