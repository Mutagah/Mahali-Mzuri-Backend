class SpecialMealBooking < ApplicationRecord
  belongs_to :user

  belongs_to :room

  belongs_to :user_room_booking
  
  validates :meal_name, :meal_type, :meal_description, :number_of_kids, :number_of_adults, :booking_date, presence: true,:on => :create

  validates :meal_price,presence: true,:on=> :update

end
