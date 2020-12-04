class AddDefaultValues < ActiveRecord::Migration[5.2]
  def change
    change_column_default :movie_votes, :upvote, 0
    change_column_default :movie_votes, :downvote, 0
  end
end
