class CreateV2Transactions < ActiveRecord::Migration[5.2]
  def change
    create_table :v2_transactions do |t|
      t.integer :user
      t.integer :need
      t.integer :amount

      t.timestamps
    end
  end
end
