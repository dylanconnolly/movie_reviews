class MovieVote < ApplicationRecord
    validates_presence_of :title, :likes, :dislikes

end