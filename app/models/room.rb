class Room < ApplicationRecord
  belongs_to :room_type
  has_many :user_room_bookings
  has_many :users, through: :user_room_bookings
end
