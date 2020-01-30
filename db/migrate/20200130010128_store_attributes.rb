class StoreAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :name, :string
    add_column :stores, :city, :string
    add_column :stores, :state, :string
  end
end
