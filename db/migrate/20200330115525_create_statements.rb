class CreateStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :statements do |t|
      t.integer :invoice_id, null: false, foreign_key: true
      t.integer :number, null: false
      t.integer :event_id, null: false, foreign_key: true
      t.string :text, null: false
      t.integer :unit_price, null: false
      t.integer :quantity, null: false
      t.integer :tax_rate, null: false
      t.integer :sales_tax, null: false
      t.integer :sub_total, null: false
      t.timestamps
    end
  end
end
