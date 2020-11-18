class CreateMovieRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_ratings do |t|
      t.string :title
      t.integer :likes
      t.integer :dislikes
    end
  end
end
