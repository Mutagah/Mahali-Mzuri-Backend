class CreateUserMealBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_meal_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true
      t.string :booking_type
      t.datetime :booking_date
      t.integer :meal_price

      t.timestamps
    end
  end
end
