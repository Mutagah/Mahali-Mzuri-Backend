class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_number, :room_condition
  belongs_to :room_types
  has_many :user_room_bookings
  has_many :users
end
