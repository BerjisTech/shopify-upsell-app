# frozen_string_literal: true

json.extract! auto_collection, :id, :shop_id, :layout, :close, :atc, :show_title, :show_price, :show_image,
              :variant_price, :compare_price, :quantity_select, :has_discount, :discount_code, :to_checkout, :date, :status, :title, :text, :same_vendor, :created_at, :updated_at
json.url auto_collection_url(auto_collection, format: :json)
