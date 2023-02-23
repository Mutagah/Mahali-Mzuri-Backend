module Api
    module V1
        class MealsController < ApplicationController
             load_and_authorize_resource

            def index
                Meals = Meal.all 
                render json: Meals, status: :ok
            end
        
            def show
                Meals = find_Meals
                render json: Meals, status: :ok
            end
        
            def create               
                Meals = Meal.create!(Meals_params)
                render json: Meals, status: :created
            end
        
            def update
                Meals = find_Meals
                Meal.update!(Meals_params)
                show
            end
        
            def destroy
                Meals = find_Meals
                Meal.destroy
                head :no_content
            end
        
            private
            
            def Meals_params
                params.permit(:user_id,:meal_id,:room_id,:booking_type,:booking_date,:quantity,:total_price)
            end
        
            def render_not_found_response
                render json: {"Error": "Meal not found"}, status: :not_found
            end
        
            def render_unprocessable_entity_response(exception)
                render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
            end
        
            def find_Meals
                Meal.find(params[:id])
            end
        end
    end
end
