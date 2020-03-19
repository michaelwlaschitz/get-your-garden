class ChangeTypeOfTimeToInteger < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :start_time
    remove_column :bookings, :end_time
    add_column :bookings, :start_time, :integer
    add_column :bookings, :end_time, :integer
    change_column :bookings, :status, :string, default: "pending"
  end
end
