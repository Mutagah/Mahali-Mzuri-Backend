class CreateMpesaPaymentSuccesses < ActiveRecord::Migration[7.0]
  def change
    create_table :mpesa_payment_successes do |t|
      t.string :merchantRequestId
      t.string :checkoutRequestID
      t.string :receiptNumber
      t.integer :phoneNumber
      t.integer :amount
      t.string :transcationDate

      t.timestamps
    end
  end
end
