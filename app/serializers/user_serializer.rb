class UserSerializer < ActiveModel::Serializer
  attributes :id, :username ,:email_address, :password_digest, :role
  has_one :user_profile
end
