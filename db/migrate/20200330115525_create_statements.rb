class CreateStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :statements do |t|
      t.integer :invoice_id
      t.integer :number
      t.integer :event_id
      t.string :text
      t.integer :unit_price
      t.integer :quantity
      t.integer :tax_rate
      t.integer :sales_tax
      t.integer :sub_total
      t.timestamps
    end
  end
end
