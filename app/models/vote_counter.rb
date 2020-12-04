class VoteCounter
    attr_reader :title, :id

    def initialize(movie_title, movie_id)
        @title = movie_title
        @id = movie_id
    end

    def upvotes
        MovieVote.where(title: self.title, upvote: 1).count
    end

    def downvotes
        MovieVote.where(title: self.title, downvote: 1).count
    end
end