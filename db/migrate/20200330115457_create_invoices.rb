class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :number
      t.string :company_name
      t.string :postcode
      t.string :address
      t.string :bank
      t.string :bank_account_type
      t.string :bank_account_number
      t.text :logo
      t.text :seal
      t.string :date
      t.string :client_name
      t.string :client_address
      t.integer :amount
      t.string :payment_deadline
      t.timestamps
    end
  end
end
