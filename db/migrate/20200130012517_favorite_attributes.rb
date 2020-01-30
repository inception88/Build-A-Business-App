class FavoriteAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :user_id, :integer
    add_column :favorites, :store_id, :integer
  end
end
