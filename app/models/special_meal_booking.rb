class SpecialMealBooking < ApplicationRecord
  belongs_to :user
  validates :meal_name, :meal_type, :meal_description, :booking_date, presence: true,:on => :create
end
