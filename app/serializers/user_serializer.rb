class UserSerializer < ActiveModel::Serializer
  attributes :id, :email_address, :password, :role
  has_one :user_profile
end
