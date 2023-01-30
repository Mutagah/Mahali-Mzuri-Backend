# use binding.irb instead of byebug which requires you to install byebug gem
module Api
    module V1
        class AuthController < ApplicationController
            def create
                user = User.find_by(username: user_login_params[:username])
                    mteja = User.find_by(email_address: user_login_params[:email_address])
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
            params.permit(:username, :email_address,:password)
        end
        end
    end
end
