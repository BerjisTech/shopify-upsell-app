# frozen_string_literal: true

json.extract! offer, :id, :title, :created_at, :updated_at
json.url offer_url(offer, format: :json)
