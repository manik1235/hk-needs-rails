class CreateV2Users < ActiveRecord::Migration[5.2]
  def change
    create_table :v2_users do |t|
      t.string :name
      t.integer :available

      t.timestamps
    end
    add_index :v2_users, :name, unique: true
  end
end
