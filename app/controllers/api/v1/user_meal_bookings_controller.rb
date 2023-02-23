module Api
    module V1
        class UserMealBookingsController < ApplicationController

                before_action :set_user_meal_booking, only: [:show, :update, :destroy]
              
                # cancancan 
                load_and_authorize_resource


                # GET /user_meal_bookings
                def index
                    user_meal_bookings = UserMealBooking.all.map do |booking|
                      {
                        user_meal_booking: booking,
                        user: booking.user # change `users` to `user`
                      }
                    end
                    render json: user_meal_bookings, status: :ok
                end
                  
              
                # GET /user_meal_bookings/1
                def show
                    @user_meal_booking = UserMealBooking.find(params[:id])
                    render json: {
                      user_meal_booking: @user_meal_booking,
                      user: @user_meal_booking.user # change `users` to `user`
                    }, status: :ok
                  end
              
                # POST /user_meal_bookings
                def create
                    @user_meal_booking = UserMealBooking.new(user_meal_booking_params)
                  
                    if @user_meal_booking.save
                      render json: {
                        user_meal_booking: @user_meal_booking,
                        user: @user_meal_booking.user # change `users` to `user`
                      }, status: :created
                    else
                      render json: @user_meal_booking.errors, status: :unprocessable_entity
                    end
                  end
                  
              
                # PATCH/PUT /user_meal_bookings/1
                def update
                  if @user_meal_booking.update(user_meal_booking_params)
                    render json: @user_meal_booking
                  else
                    render json: @user_meal_booking.errors, status: :unprocessable_entity
                  end
                end
              
                
                def destroy
                    @user_meal_booking = UserMealBooking.find(params[:id])
                    @user_meal_booking.destroy
                     # returns a head in the response but no body
                    head :no_content

                end

                private
                  # Use callbacks to share common setup or constraints between actions.
                  def set_user_meal_booking
                    @user_meal_booking = UserMealBooking.find(params[:id])
                  end
              
                  # Only allow a trusted parameter "white list" through.
                  def user_meal_booking_params
                    params.permit(:user_id, :meal_id, :room_id, :booking_type, :booking_date, :quantity, :total_price)
                  end
            
              
        
        end
    end
end
