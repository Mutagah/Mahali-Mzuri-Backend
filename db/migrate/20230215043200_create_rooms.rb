class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.references :room_types, null: false, foreign_key: true
      t.integer :room_number
      t.string :room_condition

      t.timestamps
    end
  end
end
