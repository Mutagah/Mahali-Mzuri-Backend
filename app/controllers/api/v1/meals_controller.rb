module Api
    module V1
        class MealsController < ApplicationController
        # get a list of all meals
            def index
                @meal = Meal.all
                render json: @meal, status: :ok
            end

            # show a meal by id
            def show
                @meal = Meal.find(params[:id])
                render json: @meal, status: :ok
            end

            # creating a single meal
            def create
                @meal = Meal.new(meal_params)
            
                if @meal.save
                  render json: @meal, status: :created
                else
                  render json: @meal.errors, status: :unprocessable_entity
                end
            end

        
            # to update already created meal by a single entry or several
              def update
                @meal = Meal.find(params[:id])
            
                if @meal.update(meal_params)
                  render json: @meal, status: :ok
                else
                  render json: @meal.errors, status: :unprocessable_entity
                end
              end
            
            #  to delete a meal
            def destroy
                @meal = Meal.find(params[:id])
                @meal.destroy
                 # returns a head in the response but no body
                head :no_content
            end
            
              private
        
              def meal_params
                params.require(:meal).permit(:meal_type, :meal_name, :meal_price, :description)
              end
        
        end
    end
end
