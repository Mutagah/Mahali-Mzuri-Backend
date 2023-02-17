class CreateSpecialMealBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :special_meal_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :meal_name
      t.string :meal_type
      t.string :meal_description
      t.datetime :booking_date
      t.string :meal_price

      t.timestamps
    end
  end
end
