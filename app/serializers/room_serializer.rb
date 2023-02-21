class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_number, :room_condition
  belongs_to :room_type
  has_many :user_room_bookings
  has_many :users
  has_many :room_services
  has_many :special_meal_bookings
end
