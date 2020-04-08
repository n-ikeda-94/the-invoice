class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.integer :attribution, null: false
      t.timestamps
    end
  end
end
