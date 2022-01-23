# frozen_string_literal: true

json.extract! custom_field, :id, :offer_id, :product_id, :field_type, :name, :placeholder, :price, :required,
              :created_at, :updated_at
json.url custom_field_url(custom_field, format: :json)
