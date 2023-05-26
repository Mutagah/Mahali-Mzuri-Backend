class MpesaPaymentSuccessesController < ApplicationController

    # Posting the merchantRequestId, CheckoutRequestId, ResultDesc, Mpesa Reseipt Number, amount and transaction date and phone number.
    skip_before_action :authorize, only: [:create]
    
        def create
            binding.irb
            render json: {message: "Yeey, they noticed me"}
        end

    # private
    #     def mpesa_payment_details
    #          params.permit(:name)
    #     end

end
