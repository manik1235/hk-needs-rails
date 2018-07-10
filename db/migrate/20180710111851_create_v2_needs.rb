class CreateV2Needs < ActiveRecord::Migration[5.2]
  def change
    create_table :v2_needs do |t|
      t.integer :user
      t.string :item
      t.integer :budgeted
      t.integer :allocated
      t.datetime :purchased
      t.datetime :abandoned

      t.timestamps
    end
  end
end
