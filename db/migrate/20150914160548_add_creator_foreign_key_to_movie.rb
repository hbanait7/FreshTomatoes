class AddCreatorForeignKeyToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :creator_id, :integer
  end
end
