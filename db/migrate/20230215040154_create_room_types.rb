class CreateRoomTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :room_types do |t|
      t.string :room_type
      t.text :description
      t.integer :bedroom_capacity
      t.integer :number_of_rooms
      t.integer :price
      t.boolean :parking
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :image5

      t.timestamps
    end
  end
end

# >>>>>>>>>>>> room migration <<<<<<<<<<<<<

# class CreateRooms < ActiveRecord::Migration[7.0]
#   def change
#     create_table :rooms do |t|
#       t.string :room_type
#       t.text :room_description  
#       t.string :room_number
#       t.integer :bedroom_capacity
#       t.integer :number_of_room_type
#       t.boolean :parking
#       t.string :room_image1
#       t.string :room_image2
#       t.string :room_image3
#       t.string :room_image4
#       t.string :room_image5
#       t.integer :room_price
#       t.timestamps
#     end
#   end
# end


# >>>>>>>>>>>>>>  room model <<<<<<<<<<<<<<<<<<
# class Room < ApplicationRecord
#     has_many :user_room_bookings
#     has_many :users, through: :user_room_bookings
# end

# >>>>>>>>>>>>>>  room controller <<<<<<<<<<<<<<<<<<
# use binding.irb instead of byebug which requires you to install byebug gem
# module Api
#     module V1
#         class RoomsController < ApplicationController

#             def index
#                 render json: Room.all,status: :ok
#             end

#             def show
#                 room = Room.find(params[:id])
#                 render json: room,status: :ok
#             end
               
#                 # Needed by the manager to update details of a certain room type
#             # def update
#             #     room = Room.find_by(room_type: params[:room_type])
#             #     room.update!(room_params)
#             #     render json: room,status: :accepted
#             # end

#             def create
#                 room = Room.create!(room_params)
#                 render json: room, status: :created
#             end

            
#             # def destroy
                
#             # end
#             private

#             def room_params
#                 params.permit(:room_type,:room_description,:room_number,:bedroom_capacity, :number_of_room_type,:parking, :room_image1, :room_image2, :room_image3, :room_image4, :room_image5, :room_price)
#             end

#         end 
#     end
# end




# >>>>>>>>>>>>>>  room serializer <<<<<<<<<<<<<<<<<<

# class RoomSerializer < ActiveModel::Serializer
#   attributes :id, :room_type,:room_description,:room_number,:bedroom_capacity, :parking,:room_image1,:room_image2,:room_image3, :room_image4, :room_image5, :room_price
#   has_many :user_room_bookings
#   has_many :users, through: :user_room_bookings
# end