class User < ApplicationRecord
    # Information on user only
    has_secure_password

    validates :username, presence: true, uniqueness: true

    validates :email_address, presence: true, uniqueness: true

    validates :password, confirmation: true,presence: true, length: { minimum: 8 }

    validates :password_confirmation, presence: true

    validates :role, inclusion: { in: %w(manager client room_service cook security),
    message: "%{value} is not a valid role" }

    # Information on User profile

    has_one :user_profile, dependent: :destroy

    after_create :profile

    def profile
        UserProfile.create(
            username: self.username,
            email_address: self.email_address,
            user_id: self.id,
            role: self.role,
            password: self.password)
    end

end
