class CreateFundingLevels < ActiveRecord::Migration
  def change
    create_table :funding_levels do |t|
      t.references :project
      t.string :reward_name
      t.integer :amount
      t.timestamps null: false
    end
  end
end
