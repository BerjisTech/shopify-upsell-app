# frozen_string_literal: true

json.extract! setting, :id, :shop_id, :cart_location, :cart_position, :drawer_location, :drawer_position,
              :refresh_state, :drawer_refresh, :layout_bg, :layout_color, :layout_font, :layout_size, :layout_mt, :layout_mb, :offer_radius, :offer_bs, :offer_bc, :offer_border, :button_bg, :button_color, :button_font, :button_size, :button_mt, :button_mb, :button_radius, :button_bs, :button_bc, :button_border, :image_size, :image_radius, :image_bs, :image_bc, :image_border, :text_color, :text_font, :text_size, :title_color, :title_font, :title_size, :price_color, :c_price_color, :price_font, :price_size, :c_price_size, :override, :created_at, :updated_at
json.url setting_url(setting, format: :json)
