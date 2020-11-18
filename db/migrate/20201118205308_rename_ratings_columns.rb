class RenameRatingsColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :movie_ratings, :likes, :upvote
    rename_column :movie_ratings, :dislikes, :downvote
  end
end
