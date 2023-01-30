class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid , with: :invalid_record

    def encode_token payload
        # mahali_mzuri_api in this case is the secret key
        JWT.encode(payload, "mahali_mzuri_api")  
    end
        private

    def invalid_record invalid
        render json: {errors: invalid.record.errors.full_messages},status: :unprocessable_entity
    end
end
