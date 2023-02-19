class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :meal_type
      t.string :meal_name
      t.integer :meal_price
      t.string :description

      t.timestamps
    end
  end
end
