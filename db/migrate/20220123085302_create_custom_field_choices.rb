# frozen_string_literal: true

class CreateCustomFieldChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_field_choices do |t|
      t.integer :custom_field_id
      t.integer :offer_id
      t.integer :product_id
      t.string :price
      t.string :value

      t.timestamps
    end
  end
end
