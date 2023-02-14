class CreateUserRoomBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :user_room_bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.string :number_of_residents
      t.datetime :booking_date
      t.datetime :check_out_date

      t.timestamps
    end
  end
end
