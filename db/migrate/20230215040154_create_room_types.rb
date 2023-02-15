class CreateRoomTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :room_types do |t|
      t.string :room_type
      t.text :description
      t.string :room_label
      t.integer :bedroom_capacity
      t.integer :number_of_rooms
      t.integer :price
      t.boolean :parking
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5

      t.timestamps
    end
  end
end