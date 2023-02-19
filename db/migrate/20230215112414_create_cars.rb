class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :car_registration
      t.string :car_type
      t.integer :no_of_seats
      t.string :car_condition

      t.timestamps
    end
  end
end
