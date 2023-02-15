class UserRoomBookingSerializer < ActiveModel::Serializer
  attributes :id, :number_of_residents, :booking_date, :check_out_date
  has_one :user
  has_one :room
end
