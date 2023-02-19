class SpecialMealBooking < ApplicationRecord
  belongs_to :user

  validates :meal_name, :meal_type, :meal_description, :number_of_kids, :number_of_adults, :booking_date, presence: true,:on => :create

  validates :meal_price,presence: true,:on=> :update

end
