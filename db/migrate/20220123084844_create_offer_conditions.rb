# frozen_string_literal: true

class CreateOfferConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_conditions do |t|
      t.integer :offer_id
      t.integer :block_id
      t.integer :condition_id
      t.string :quantity
      t.string :level
      t.string :content
      t.integer :product_id
      t.integer :variant_id
      t.string :amount
      t.string :country

      t.timestamps
    end
  end
end
