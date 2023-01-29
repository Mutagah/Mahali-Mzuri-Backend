class UserProfileSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :gender, :age, :email_address, :mobile, :bio, :role
  belongs_to :user
end
