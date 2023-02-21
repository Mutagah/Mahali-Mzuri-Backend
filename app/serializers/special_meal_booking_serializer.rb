class SpecialMealBookingSerializer < ActiveModel::Serializer
  attributes :id, :meal_name, :meal_type, :meal_description, :number_of_adults, :number_of_kids, :booking_date, :meal_price
  belongs_to :user
  belongs_to :room
end