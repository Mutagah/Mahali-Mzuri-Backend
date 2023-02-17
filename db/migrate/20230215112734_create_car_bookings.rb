class CreateCarBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :car_bookings do |t|
      t.integer :user_id
      t.integer :car_id
      t.date :book_date
      t.date :return_date
      t.integer :number_of_passengers
      t.string :destination_location
      t.boolean :is_our_driver

      t.timestamps
    end
  end
end
