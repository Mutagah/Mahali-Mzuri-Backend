class MealSerializer < ActiveModel::Serializer
  attributes :id, :meal_type, :meal_name, :meal_price, :description
  has_many: users
end
