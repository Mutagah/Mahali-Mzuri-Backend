class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.text :room_description  
      t.string :room_number
      t.integer :bedroom_capacity
      t.boolean :parking
      t.string :room_image1
      t.string :room_image2
      t.string :room_image3
      t.string :room_image4
      t.string :room_image5
      t.integer :room_price
      t.timestamps
    end
  end
end
