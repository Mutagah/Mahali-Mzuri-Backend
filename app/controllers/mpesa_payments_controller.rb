class MpesaPaymentsController < ApplicationController
    
    # private
    skip_before_action :authorize, only: [:generate_access_token]

    def generate_access_token
        @access_token_url = "https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials"

        # The authorization bearer token
        @auth = Base64.strict_encode64("#{ENV['mpesa_consumer_key']}:#{ENV['mpesa_consumer_secret']}")

            # Making the request with the help of rest-client gem

            tokenResponse = RestClient::Request.execute( url: @access_token_url, method: :get, headers: {
                Authorization: "Basic #{@auth}"
            })
        tokenResponse
    end
end
