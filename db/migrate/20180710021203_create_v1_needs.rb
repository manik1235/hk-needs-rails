class CreateV1Needs < ActiveRecord::Migration[5.2]
  def change
    create_table :v1_needs do |t|
      t.string :user
      t.string :item
      t.integer :budgeted
      t.integer :allocated

      t.timestamps
    end
  end
end
