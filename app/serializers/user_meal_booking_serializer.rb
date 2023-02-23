class UserMealBookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :room_id, :meal_id :booking_type, :booking_date, :meal_price, :quantity,:total_price
  has_one :user
  has_one :meal
end
