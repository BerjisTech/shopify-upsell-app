# frozen_string_literal: true

class CreateOfferSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :offer_settings, id: :uuid do |t|
      t.integer :offer_id
      t.string :button_color
      t.string :button_font
      t.string :button_border
      t.string :button_font_size
      t.string :button_margin_top
      t.string :button_margin_bottom

      t.timestamps
    end
  end
end
