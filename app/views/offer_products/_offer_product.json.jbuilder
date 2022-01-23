# frozen_string_literal: true

json.extract! offer_product, :id, :offer_id, :shop_id, :text, :atc, :show_title, :show_price, :show_image,
              :variant_price, :compare_price, :linked, :quantity_select, :ab_test, :ab_text, :ab_atc, :replacement_product, :replacement_variant, :created_at, :updated_at
json.url offer_product_url(offer_product, format: :json)
