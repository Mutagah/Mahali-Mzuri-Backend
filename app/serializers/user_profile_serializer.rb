class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :gender, :age, :email_address, :mobile, :bio, :role, :username, :user_id
  belongs_to :user
end
