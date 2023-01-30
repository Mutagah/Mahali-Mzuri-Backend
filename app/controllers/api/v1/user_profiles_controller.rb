# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class UserProfilesController < ApplicationController
        def show
            profile = current_user.user_profile
            render json: profile, status: :ok
        end
    end 
end
end
