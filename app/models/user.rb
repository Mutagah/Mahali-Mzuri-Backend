class User < ApplicationRecord
    # Information on user only
    has_secure_password

    validates :username, presence: true, uniqueness: true,:on => :create
    
    validates :username, uniqueness: true, :on => :update

    validates :email_address, presence: true, uniqueness: true,:on => :create

    validates :email_address,uniqueness: true,:on => :update

    validates :password, confirmation: true,presence: true, length: { minimum: 8 },:on => :create

    validates :password_confirmation, presence: true,:on => :create

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

    # Information on user - room booking

    # has_many :user_room_bookings
    # has_many :rooms, through: :user_room_bookings
end
