class SpecialMealBookingSerializer < ActiveModel::Serializer
  attributes :id, :meal_name, :meal_type, :meal_description, :booking_date, :meal_price
  belongs_to :user
end
# {
#   "meal_name":"Pilau",
#   "meal_type":"Supper",
#   "meal_description":"A coastal dish that has its ingredients as rice, meat, kachumbari and some spices added to it",
#   "booking_date":"2023-02-15T21:00"
# }