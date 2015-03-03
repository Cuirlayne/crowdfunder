class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.references :funding_level
      t.string :name
      t.string :email
      t.integer :amount
      t.timestamps null: false
    end
  end
end
