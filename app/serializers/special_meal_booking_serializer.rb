class SpecialMealBookingSerializer < ActiveModel::Serializer
  attributes :id, :meal_name, :meal_type, :meal_description, :booking_date, :meal_price
  has_one :user
end
