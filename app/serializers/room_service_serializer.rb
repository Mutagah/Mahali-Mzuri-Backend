class RoomServiceSerializer < ActiveModel::Serializer
  attributes :id, :service_date
  has_one :user
  has_one :user_room_booking
end
