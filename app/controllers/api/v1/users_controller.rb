# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class UsersController < ApplicationController
            
            skip_before_action :authorize, only: [:create]

            def create
                user = User.create!(user_params)
                if user.valid?
                    token = encode_token({user_id: user.id})
                    render json: {user: UserSerializer.new(user), token: token},status: :created
                end
            end

            def destroy
                user = current_user.destroy
                head :no_content
            end

            private
            def user_params
                params.permit(:username,:email_address,:password,:password_confirmation,:role)
            end
        end
    end
end