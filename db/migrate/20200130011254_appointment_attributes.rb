class AppointmentAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :datetime, :datetime
  end
end
