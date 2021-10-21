# frozen_string_literal: true

json.extract! offer_product, :id, :product_id, :name, :created_at, :updated_at
json.url offer_product_url(offer_product, format: :json)
