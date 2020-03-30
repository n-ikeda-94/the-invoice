class CreateDepertments < ActiveRecord::Migration[5.0]
  def change
    create_table :depertments do |t|

      t.timestamps
    end
  end
end
