class UserRoomBookingSerializer < ActiveModel::Serializer
  attributes :id, :number_of_residents, :booking_date, :check_out_date
  belongs_to :user
  belongs_to :room
end
