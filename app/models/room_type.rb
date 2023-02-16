class RoomType < ApplicationRecord
    has_many :rooms,dependent: :destroy
    has_many :user_room_bookings, through: :rooms

    # Adding parking to this validation will enforce that the value of parking is always true
    
    validates :description,:bedroom_capacity,:number_of_rooms,:price,:image1,:image2,:image3,:image4,:image5, presence: true,:on => :create

    validates :room_label,:room_type, :presence => true, :uniqueness => true

    after_create :seeding_room
        
        def seeding_room
            my_array = ["good","bad"]
            self.number_of_rooms.times do |a|
                room = Room.create(room_type_id:self.id,room_number:"#{self.room_label}#{a+=1}",room_condition:my_array.sample)
            end
        end
end
