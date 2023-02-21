# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class CarsController < ApplicationController
         
        load_and_authorize_resource
            
                    # Already accommodated for in application controller
            # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
            # rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
            # wrap_parameters format: []
     
        def index 
            render json: Car.all, status: 200
        end

        def show
            car = find_car
            render json: car, status: :ok
        end

        def create
            car = car.create!(car_params)
            render json: car, status: :created
        end

        def update
            car = find_car
            car.update!(car_params)
            show
        end

        def destroy
            car = find_car
            car.destroy
            head :no_content
        end

        private
    
        def car_params
            params.permit(:car_registration, :car_type, :no_of_seats, :car_condition)
        end

        def find_car
            Car.find(params[:id])
        end

        # def render_not_found_response
        #     render json: {"Error": "car not found"}, status: :not_found
        # end

        # def render_unprocessable_entity_response(exception)
        #     render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
        # end        
        end
    end
end
