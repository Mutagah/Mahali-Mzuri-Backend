class CreateCarBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :car_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.datetime :book_date
      t.datetime :return_date
      t.integer :number_of_passengers
      t.string :destination_location
      t.boolean :is_our_driver

      t.timestamps
    end
  end
end
