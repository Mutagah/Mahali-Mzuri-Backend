class RoomService < ApplicationRecord

  belongs_to :user

  belongs_to :user_room_booking
  
end
