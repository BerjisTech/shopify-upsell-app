# frozen_string_literal: true

json.array! @custom_fields, partial: 'custom_fields/custom_field', as: :custom_field
