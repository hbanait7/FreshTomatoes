class RemoveReviewerForeignKeyFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :reviewer_id, :integer
  end
end
