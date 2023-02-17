# use binding.irb instead of byebug which requires you to install byebug gem
module Api 
    module V1
        class SpecialMealBookingsController < ApplicationController

            def index
                render json: current_user.special_meal_bookings.all,status: :ok
            end

            def create
                if current_user.special_meal_bookings.find_by(special_meal_params) == nil
                    meal_booking = current_user.special_meal_bookings.create!(special_meal_params)
                    render json: meal_booking,status: :created
                else 
                    render json: {message: "Booking has already been made for this details"},status: :unprocessable_entity
                end
            end

            private

            def special_meal_params
                params.permit(:meal_name,:meal_type,:meal_description,:booking_date)
            end

            def special_meal_update_params
                params.permit(:meal_price)
            end

        end
    end
end