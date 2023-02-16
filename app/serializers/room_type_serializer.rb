class RoomTypeSerializer < ActiveModel::Serializer
  attributes :id, :room_type,:description,:room_label,:bedroom_capacity, :number_of_rooms,:price, :parking, :image1, :image2, :image3, :image4, :image5
end
