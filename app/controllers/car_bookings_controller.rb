class CarBookingsController < ApplicationController

    load_and_authorize_resource

    wrap_parameters format: []
    # before_action :authorize
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    def index 
        bookings = CarBooking.all
        render json: bookings, status: :ok
    end

    def show
        booking = CarBooking.find_by(id:params[:id])
        if booking
            render json:booking
        else
            render json:{error:"Car Booking not found"}, status: :not_found
        end
    end

    def update
        booking = CarBooking.find_by(id:params[:id])
        if booking
            booking.update(booking_params)
            render json:booking, status: :ok
        else
            render json: {error:"Car Booking not found"}, status:not_found
        end
    end

    def create
            booking = CarBookings.create!(booking_params)
            render json:booking, status: :created
    end

    def destroy 
        booking = find_car
        booking.destroy
        head :no_content
    end
   
    
    private

    def booking_params
        params.permit(:user_id, :car_id, :book_date, :return_date, :number_of_passengers, :destination_location, :is_our_driver)
    end

    def find_car
        CarBooking.find_by(params[:booking_id])
    end

     # def render_not_found_response 
    #     render json: {error:"Not found"}, status: :not_found
    # end
    
end
