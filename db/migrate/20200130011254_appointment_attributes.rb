class AppointmentAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :datetime, :datetime
    add_column :appointments, :user_id, :integer
    add_column :appointments, :store_id, :integer
  end
end
