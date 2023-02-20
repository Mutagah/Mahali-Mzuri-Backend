class CreateRoomServices < ActiveRecord::Migration[7.0]
  def change
    create_table :room_services do |t|
      t.references :user, null: false, foreign_key: true
      t.references :user_room_booking, null: false, foreign_key: true
      t.date :service_date

      t.timestamps
    end
  end
end
