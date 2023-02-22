# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class RoomServicesController < ApplicationController

            load_and_authorize_resource
            
            # This action is done by the manager and room service guys

            def index
                render json: RoomService.all,status: :ok
            end

            # This action is done by the manager

            def create
                if RoomService.find_by(room_service_params) == nil
                    room_service = RoomService.create!(room_service_params)
                    render json: room_service,status: :created
                else 
                    render json: {message: "Room Service for this room and this specific date has already been allocated"},status: :unprocessable_entity
                end
            end

            private

            def room_service_params
                params.permit(:user_id,:user_room_booking_id,:room_id,:service_date)
            end
        end
    end
end