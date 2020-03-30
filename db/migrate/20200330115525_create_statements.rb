class CreateStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :statements do |t|

      t.timestamps
    end
  end
end
