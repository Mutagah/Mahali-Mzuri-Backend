class Meal < ApplicationRecord
    
    has_many :user_meal_bookings

    has_many :users, through: :user_meal_bookings
end
