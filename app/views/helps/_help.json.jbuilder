# frozen_string_literal: true

json.extract! help, :id, :created_at, :updated_at
json.url help_url(help, format: :json)
