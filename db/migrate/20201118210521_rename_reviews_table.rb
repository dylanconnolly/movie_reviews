class RenameReviewsTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :movie_ratings, :movie_votes
  end
end
