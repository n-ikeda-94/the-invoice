class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :bank, null: false
      t.string :account_type, null: false
      t.string :account_number, null: false
      t.text :logo
      t.text :seal
      t.timestamps
    end
  end
end
