# frozen_string_literal: true

class CreateOfferProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_products do |t|
      t.integer :offer_id
      t.integer :shop_id
      t.string :text
      t.string :atc
      t.string :show_title
      t.string :show_price
      t.string :show_image
      t.string :variant_price
      t.string :compare_price
      t.string :linked
      t.string :quantity_select
      t.string :ab_test
      t.string :ab_text
      t.string :ab_atc
      t.string :replacement_product
      t.string :replacement_variant

      t.timestamps
    end
  end
end
