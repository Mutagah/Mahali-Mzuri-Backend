# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class UserProfilesController < ApplicationController

        load_and_authorize_resource
        
        def show
            profile = current_user.user_profile
            render json: profile, status: :ok
        end
        
        def update
            current_user.user_profile.update!(profile_params)
            logged_in_profile = current_user.user_profile
            render json: logged_in_profile, status: :accepted
        end

        private

        def profile_params
            params.permit(:full_name, :username, :gender, :age, :email_address, :mobile, :bio, :password)
        end

        end 
    end
end