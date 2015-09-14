class AddReviewerAndMovieForeignKeyToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :movie_id, :integer
    add_column :reviews, :reviewer_id, :integer
  end
end
