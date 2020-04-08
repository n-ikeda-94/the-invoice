class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.integer :company_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
