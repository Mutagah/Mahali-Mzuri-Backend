class RoomType < ApplicationRecord
    has_many :rooms

    after_create :seeding_room
        
        def seeding_room
            my_array = ["good","bad"]
            self.number_of_rooms.times do |a|
                room = Room.create(room_type_id:self.id,room_number:"#{self.room_label}#{a+=1}",room_condition:my_array.sample)
            end
        end
end
