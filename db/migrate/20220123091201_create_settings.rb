# frozen_string_literal: true

class CreateSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :settings do |t|
      t.integer :shop_id
      t.string :cart_location
      t.string :cart_position
      t.string :drawer_location
      t.string :drawer_position
      t.string :refresh_state
      t.string :drawer_refresh
      t.string :layout_bg
      t.string :layout_color
      t.string :layout_font
      t.string :layout_size
      t.string :layout_mt
      t.string :layout_mb
      t.string :offer_radius
      t.string :offer_bs
      t.string :offer_bc
      t.string :offer_border
      t.string :button_bg
      t.string :button_color
      t.string :button_font
      t.string :button_size
      t.string :button_mt
      t.string :button_mb
      t.string :button_radius
      t.string :button_bs
      t.string :button_bc
      t.string :button_border
      t.string :image_size
      t.string :image_radius
      t.string :image_bs
      t.string :image_bc
      t.string :image_border
      t.string :text_color
      t.string :text_font
      t.string :text_size
      t.string :title_color
      t.string :title_font
      t.string :title_size
      t.string :price_color
      t.string :c_price_color
      t.string :price_font
      t.string :price_size
      t.string :c_price_size
      t.text :override

      t.timestamps
    end
  end
end
