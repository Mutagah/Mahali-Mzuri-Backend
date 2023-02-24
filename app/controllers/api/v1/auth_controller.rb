# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class AuthController < ApplicationController
            
            skip_before_action :authorize, only: [:create]
            
            def create
                user = User.find_by(username: user_login_params[:login_id])
                    mteja = User.find_by(email_address: user_login_params[:login_id])
                    if (user && user.authenticate(user_login_params[:password])) || (mteja && mteja.authenticate(user_login_params[:password]))
                        if user != nil
                            token = encode_token({user_id: user.id})
                            render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted 
                        else 
                            
                            token = encode_token({user_id: mteja.id})
                            render json: { user: UserSerializer.new(mteja), jwt: token }, status: :accepted 
                        end
                        
                    else 
                        render json:{ error: "Invalid username or password"}, status: :unauthorized
                    end
            end

        private

        def user_login_params
            params.permit(:login_id,:password)
        end

        end
    end
end
