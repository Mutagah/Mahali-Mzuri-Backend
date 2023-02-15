class RoomTypeSerializer < ActiveModel::Serializer
  attributes :id, :type_of_room, :description, :number_of_rooms, :parking, :image1, :image2, :image3, :image4, :image5
end
