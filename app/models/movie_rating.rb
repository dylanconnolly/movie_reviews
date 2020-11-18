class MovieRating < ApplicationRecord
    validates_presence_of :title, :likes, :dislikes
    
end