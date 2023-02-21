class UserRoomBooking < ApplicationRecord
  
  belongs_to :user

  belongs_to :room

  validates :user_id,:room_id,:number_of_adults,:number_of_kids,:booking_date,:check_out_date, presence: true

  # Information on room services

  has_many :room_services,dependent: :destroy

  # Information on special meal bookings

  has_many :special_meal_bookings
  
end