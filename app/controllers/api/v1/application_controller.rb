class ApplicationController < ActionController::API

    before_action :authorize

    rescue_from ActiveRecord::RecordInvalid , with: :invalid_record

    rescue_from CanCan::AccessDenied, with: :cancan_denial

    def encode_token payload
        # mahali_mzuri_api in this case is the secret key
        JWT.encode(payload, "mahali_mzuri_api")  
    end
    
    def auth_header
        # You need the authorization header to decode token
        request.headers["Authorization"]
    end

    def decode_token
        if auth_header
            token = auth_header.split(" ")[1]
            begin
                JWT.decode(token, "mahali_mzuri_api", true, algorithm:"HS256")
            rescue JWT::DecodeError
                nil 
            end
        end
    end

    def current_user
        # If the decode_token exists grab the user id from it
        if decode_token
            user_id = decode_token[0]['user_id']
            user = User.find(user_id)
        end
    end

    def authorize
        render json:{message: "Please log in first"},status: :unauthorized unless current_user
    end

    private

    def invalid_record invalid
        render json: {errors: invalid.record.errors.full_messages},status: :unprocessable_entity
    end

    def cancan_denial
        render json: {warning: "You are not authorized to access or manage this information"}, status: :unauthorized
    end
end
