class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :postcode
      t.string :address
      t.integer :company_id
      t.timestamps
    end
  end
end
