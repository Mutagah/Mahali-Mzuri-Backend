class User < ApplicationRecord
    # Information on user only
    has_secure_password

    validates :username, presence: true, uniqueness: true,:on => :create
    
    validates :username, uniqueness: true, :on => :update

    validates :email_address, presence: true, uniqueness: true,:on => :create

    validates :email_address,uniqueness: true,:on => :update

    validates :password, confirmation: true,presence: true, length: { minimum: 8 },:on => :create

    validates :password_confirmation, presence: true,:on => :create

    attribute :role, :string, default: "client"

    validates :role, inclusion: { in: %w(manager admin room_service cook security client),
    message: "%{value} is not a valid role" }

    ROLES = %w{manager admin room_service cook security client}
    
    ROLES.each do |role_name|
        define_method "#{role_name}?" do 
          role == role_name  
        end
    end


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

    has_many :user_room_bookings, dependent: :destroy
    has_many :rooms, through: :user_room_bookings

    # Information on special Meal booking 

    has_many :special_meal_bookings, dependent: :destroy

    # Information on car_bookings
    has_many :car_bookings, dependent: :destroy
    
    # Information on user Meal booking

    has_many :user_meal_bookings
    
    has_many :meals, through: :user_meal_bookings

    # Information on room Services

    has_many :room_services,dependent: :destroy
end
