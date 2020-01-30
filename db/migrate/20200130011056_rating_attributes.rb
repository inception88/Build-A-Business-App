class RatingAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :score, :integer
    add_column :ratings, :user_id, :integer
    add_column :ratings, :store_id, :integer
  end
end
