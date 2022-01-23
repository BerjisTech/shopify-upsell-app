class CreateConditionBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :condition_blocks do |t|
      t.integer :offer_id
      t.text :rule

      t.timestamps
    end
  end
end
