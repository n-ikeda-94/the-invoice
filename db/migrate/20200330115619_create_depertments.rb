class CreateDepertments < ActiveRecord::Migration[5.0]
  def change
    create_table :depertments do |t|
      t.string :name
      t.integer :company_id
      t.timestamps
    end
  end
end
