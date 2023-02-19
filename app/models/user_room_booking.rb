class UserRoomBooking < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :user_id,:room_id,:number_of_adults,:number_of_kids,:booking_date,:check_out_date, presence: true
end