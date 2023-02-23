module Api
    module V1
        class UserMealBookingsController < ApplicationController

            load_and_authorize_resource

            def index
                UserMealBooking = UserMealBooking.all 
                render json: UserMealBooking, status: :ok
            end
        
            def show
                UserMealBooking = find_UserMealBooking
                render json: UserMealBooking, status: :ok
            end
        
            def create               
                UserMealBooking = UserMealBooking.create!(UserMealBooking_params)
                render json: UserMealBooking, status: :created
            end
        
            def update
                UserMealBooking = find_UserMealBooking
                UserMealBooking.update!(UserMealBooking_params)
                show
            end
        
            def destroy
                UserMealBooking = find_UserMealBooking
                UserMealBooking.destroy
                head :no_content
            end
        
            private
            
            def UserMealBooking_params
                params.permit(:user_id,:meal_id,:room_id,:booking_type,:booking_date,:quantity,:total_price)
            end
        
            def render_not_found_response
                render json: {"Error": "User Meal not found"}, status: :not_found
            end
        
            def render_unprocessable_entity_response(exception)
                render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
            end
        
            def find_UserMealBooking
                UserMealBooking.find(params[:id])
            end
        end
    end
end
