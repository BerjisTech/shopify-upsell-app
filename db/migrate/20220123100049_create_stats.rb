# frozen_string_literal: true

class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.string :date
      t.integer :shop_id
      t.integer :offer_id
      t.string :product
      t.string :variant
      t.string :quantity
      t.string :ip
      t.string :country
      t.string :type
      t.string :action
      t.string :page
      t.string :position_on_page
      t.string :device
      t.string :browser
      t.string :cart_items
      t.string :price

      t.timestamps
    end
  end
end
