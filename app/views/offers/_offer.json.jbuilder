# frozen_string_literal: true

json.extract! offer, :id, :shop_id, :date, :title, :scheme, :stop_show, :layout, :required_checkout, :has_discount,
              :discount_code, :general_block_rule, :to_checkout, :auto_add, :status, :text, :atc, :close, :created_at, :updated_at
json.url offer_url(offer, format: :json)
