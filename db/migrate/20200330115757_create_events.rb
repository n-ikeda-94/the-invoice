class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.integer :account_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
