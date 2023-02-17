class CarSerializer < ActiveModel::Serializer
  attributes :id, :car_registration, :car_type, :no_of_seats, :car_condition
end
