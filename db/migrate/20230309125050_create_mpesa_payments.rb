class CreateMpesaPayments < ActiveRecord::Migration[7.0]
  def change
    create_table :mpesa_payments do |t|
      t.string :phoneNumber
      t.string :amount

      t.timestamps
    end
  end
end
