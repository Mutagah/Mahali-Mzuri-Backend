class CarBookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :car_id, :book_date, :return_date, :number_of_passengers, :destination_location, :is_our_driver
end
