class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :postcode
      t.string :address
      t.string :bank
      t.string :account_type
      t.string :account_number
      t.text :logo
      t.text :seal
      t.timestamps
    end
  end
end
