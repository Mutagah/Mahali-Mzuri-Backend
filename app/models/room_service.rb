class RoomService < ApplicationRecord

  belongs_to :user

  belongs_to :room
  belongs_to :user_room_booking
  
end
