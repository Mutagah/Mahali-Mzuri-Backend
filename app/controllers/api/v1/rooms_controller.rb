# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class RoomsController < ApplicationController
        
        # All actions are for the manager
        def index
            render json:Room.all, status: :ok
        end

        def show 
            room = find_room
            render json:room, status: :ok
        end

        def update
            room = find_room
            room.update!(room_params)
            render json:room,status: :accepted
        end  

        private

        def room_params
            params.permit(:room_condition)
        end

        def find_room
            Room.find(params[:id])
        end

        end
    end
end