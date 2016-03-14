class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :movie_theater_id
      t.integer :customer_id
      t.time :show_timing
      t.integer :seat_number

      t.timestamps null: false
    end
  end
end
