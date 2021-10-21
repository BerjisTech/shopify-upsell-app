# frozen_string_literal: true

class CreateOfferProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_products, id: :uuid do |t|
      t.integer :product_id
      t.text :name

      t.timestamps
    end
  end
end
