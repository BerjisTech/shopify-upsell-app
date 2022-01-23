# frozen_string_literal: true

class CreateCustomFields < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_fields do |t|
      t.integer :offer_id
      t.integer :product_id
      t.string :field_type
      t.string :name
      t.string :placeholder
      t.string :price
      t.string :required

      t.timestamps
    end
  end
end
