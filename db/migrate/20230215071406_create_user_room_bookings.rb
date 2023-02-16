class CreateUserRoomBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_room_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.integer :number_of_adults
      t.integer :number_of_kids
      t.datetime :booking_date
      t.datetime :check_out_date

      t.timestamps
    end
  end
end
