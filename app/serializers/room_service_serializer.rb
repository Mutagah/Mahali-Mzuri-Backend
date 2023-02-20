class RoomServiceSerializer < ActiveModel::Serializer
  attributes :id, :service_date
  belongs_to :user
  belongs_to :room
  belongs_to :user_room_booking
  
end
