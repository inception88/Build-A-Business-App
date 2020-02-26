class AddCategoryToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :category, :string
  end
end
