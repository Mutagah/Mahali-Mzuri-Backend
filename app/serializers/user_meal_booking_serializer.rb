class UserMealBookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :meal_id, :room_id,  :booking_type, :booking_date, :quantity, :total_price
  has_many :users
  has_many :meals
end

