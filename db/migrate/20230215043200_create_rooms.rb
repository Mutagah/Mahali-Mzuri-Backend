class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.references :room_type, null: false, foreign_key: true
      t.string :room_number
      t.string :room_condition

      t.timestamps
    end
  end
end
