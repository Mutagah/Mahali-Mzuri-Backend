class MpesaPaymentSuccessSerializer < ActiveModel::Serializer
  attributes :id, :merchantRequestId, :checkoutRequestID, :receiptNumber, :phoneNumber, :amount, :transcationDate
end
