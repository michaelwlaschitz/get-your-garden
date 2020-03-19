class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :user, foreign_key: true
      t.references :garden, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
