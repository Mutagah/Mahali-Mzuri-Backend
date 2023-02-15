class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_number, :room_condition
  has_one :room_types
end
