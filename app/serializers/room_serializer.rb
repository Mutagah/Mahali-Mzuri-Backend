class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_type,:room_description,:room_number,:bedroom_capacity, :parking,:room_image1,:room_image2,:room_image3, :room_image4, :room_image5, :room_price
end