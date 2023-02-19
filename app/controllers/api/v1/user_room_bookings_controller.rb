# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class UserRoomBookingsController < ApplicationController
        
            # This is for the client who wants to see the room booked
        def show
            room_booked = current_user.user_room_bookings
            render json: room_booked,status: :ok
        end

        def create
            if UserRoomBooking.find_by(room_booking_params) == nil
            room_booking = UserRoomBooking.create!(room_booking_params)
            render json: room_booking,status: :created
            else 
                render json: {message: "Booking has already been made for this details"},status: :unprocessable_entity
            end
        end
        
        def update
           room_booking = UserRoomBooking.find(params[:id]).update!(room_booking_update_params) 
           render json:room_booking,status: :accepted

        end

        #  Strictly to be done by the manager and also when payment is made reversal of money should be put in place.
        def destroy
            room_booked = UserRoomBooking.find(params[:id]).destroy!
            # returns a head in the response but no body
            head :no_content
        end

        private

        def room_booking_params
            params.permit(:user_id,:room_id,:number_of_adults,:number_of_kids,:booking_date,:check_out_date)
        end

        def room_booking_update_params
            params.permit(:room_id,:number_of_adults,:number_of_kids,:booking_date,:check_out_date)
        end

        end
    end
end