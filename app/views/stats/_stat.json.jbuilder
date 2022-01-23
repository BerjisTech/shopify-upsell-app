json.extract! stat, :id, :date, :shop_id, :offer_id, :product, :variant, :quantity, :ip, :country, :type, :action, :page, :position_on_page, :device, :browser, :cart_items, :price, :created_at, :updated_at
json.url stat_url(stat, format: :json)
