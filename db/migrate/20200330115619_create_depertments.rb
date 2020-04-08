class CreateDepertments < ActiveRecord::Migration[5.0]
  def change
    create_table :depertments do |t|
      t.string :name, null: false
      t.integer :company_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
