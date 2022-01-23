# frozen_string_literal: true

json.extract! condition_block, :id, :offer_id, :rule, :created_at, :updated_at
json.url condition_block_url(condition_block, format: :json)
