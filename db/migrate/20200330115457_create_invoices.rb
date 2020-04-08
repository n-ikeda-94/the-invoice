class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.integer :number, null: false
      t.string :company_name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :bank, null: false
      t.string :bank_account_type, null: false
      t.string :bank_account_number, null: false
      t.text :logo
      t.text :seal
      t.string :date, null: false
      t.string :client_name, null: false
      t.string :client_address, null: false
      t.integer :amount, null: false
      t.string :payment_deadline, null: false
      t.timestamps
    end
  end
end
