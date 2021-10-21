# frozen_string_literal: true

require 'application_system_test_case'

class OfferProductsTest < ApplicationSystemTestCase
  setup do
    @offer_product = offer_products(:one)
  end

  test 'visiting the index' do
    visit offer_products_url
    assert_selector 'h1', text: 'Offer Products'
  end

  test 'creating a Offer product' do
    visit offer_products_url
    click_on 'New Offer Product'

    fill_in 'Name', with: @offer_product.name
    fill_in 'Product', with: @offer_product.product_id
    click_on 'Create Offer product'

    assert_text 'Offer product was successfully created'
    click_on 'Back'
  end

  test 'updating a Offer product' do
    visit offer_products_url
    click_on 'Edit', match: :first

    fill_in 'Name', with: @offer_product.name
    fill_in 'Product', with: @offer_product.product_id
    click_on 'Update Offer product'

    assert_text 'Offer product was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Offer product' do
    visit offer_products_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Offer product was successfully destroyed'
  end
end
