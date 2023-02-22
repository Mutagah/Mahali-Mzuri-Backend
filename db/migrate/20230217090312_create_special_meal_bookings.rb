class CreateSpecialMealBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :special_meal_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.references :user_room_booking, null: false, foreign_key: true
      t.string :meal_name
      t.string :meal_type
      t.string :meal_description
      t.integer :number_of_kids
      t.integer :number_of_adults
      t.datetime :booking_date
      t.integer :meal_price

      t.timestamps
    end
  end
end
