# frozen_string_literal: true

class CreateAutoCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :auto_collections do |t|
      t.integer :shop_id
      t.string :layout
      t.string :close
      t.string :atc
      t.string :show_title
      t.string :show_price
      t.string :show_image
      t.string :variant_price
      t.string :compare_price
      t.string :quantity_select
      t.string :has_discount
      t.string :discount_code
      t.string :to_checkout
      t.datetime :date
      t.string :status
      t.string :title
      t.string :text
      t.string :same_vendor

      t.timestamps
    end
  end
end
