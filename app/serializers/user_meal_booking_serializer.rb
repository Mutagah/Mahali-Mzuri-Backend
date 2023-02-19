class UserMealBookingSerializer < ActiveModel::Serializer
  attributes :id, :booking_type, :booking_date, :meal_price
  has_one :user
  has_one :meal
end
