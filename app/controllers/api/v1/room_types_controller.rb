# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class RoomTypesController < ApplicationController
         
        skip_before_action :authorize, only: [:show]

        def show
            room_type = find_room_type
            render json: room_type,status: :ok              
        end

        def create
            room_type = RoomType.create!(on_create_params)
            render json: room_type,status: :created
        end

        def update
            room_type = find_room_type
            room_type.update!(on_update_params)
            render json: room_type,status: :accepted
        end  

        # ensure that rooms associated with this rooms are not booked
        # def destroy  
        #     room_type = find_room_type
        #     room_type.destroy!
        #     # returns a head in the response but no body
        #     head :no_content
        # end

        private

        def on_update_params
            params.permit(:room_type,:description,:room_label,:bedroom_capacity,:price,:parking,:image1,:image2,:image3,:image4,:image5)
        end

        def on_create_params
            params.permit(:room_type,:description,:number_of_rooms,:room_label,:bedroom_capacity,:price,:parking,:image1,:image2,:image3,:image4,:image5)
        end

        def find_room_type
            RoomType.find(params[:id])
        end
        end
    end
end
