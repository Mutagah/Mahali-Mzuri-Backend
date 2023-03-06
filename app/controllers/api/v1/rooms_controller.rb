# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class RoomsController < ApplicationController
        
        load_and_authorize_resource :except => [:specific_rooms]

        skip_before_action :authorize, only: [:specific_rooms]
        
        # fetching where room conditions is equal to good and the room_type_id is specified
        # This action is for the customer
        def specific_rooms
            render json:Room.where("room_type_id  = ? AND room_condition = ?", params[:room_type_id], "good"),status: :ok
        end

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