# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class RoomsController < ApplicationController
            def create
                room = Room.create!(room_params)
                render json: room, status: :created
            end
            
            

            private

            def room_params
                params.permit(:room_type,:room_description,:room_number,:bedroom_capacity, :parking,:room_image1,:room_image2,:room_image3, :room_image4, :room_image5, :room_price)
            end
        end 
    end
end
