# frozen_string_literal: true

json.array! @offer_products, partial: 'offer_products/offer_product', as: :offer_product
