module Api
    module V1
        class MealsController < ApplicationController
            # before_action :authenticate_user!
            before_action :authorize_cook_or_manager!, only: [:create]

             load_and_authorize_resource

            def index
                @meals = Meal.all
                render status: :ok, template: "meals/index"
            end

            def show
                @meal = Meal.find(params[:id])
                render status: :ok, template: "meals/show"
            end
            
            def create
                @meals = Meal.create!(meal_params)
                render json: @meals,status: :created
            end

           
            
              private
            
            def meal_params
                params.require(:meal).permit(:meal_type, :meal_name, :meal_price, :description)
            end

            def authorize_cook_or_manager!
                unless current_user && (current_user.role == "cook" || current_user.role == "manager")
                  render json: { errors: "You are not authorized to perform this action." }, status: :unauthorized
                end
            end
        
        
        end
    end
end
