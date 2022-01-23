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

    fill_in 'Ab atc', with: @offer_product.ab_atc
    fill_in 'Ab test', with: @offer_product.ab_test
    fill_in 'Ab text', with: @offer_product.ab_text
    fill_in 'Atc', with: @offer_product.atc
    fill_in 'Compare price', with: @offer_product.compare_price
    fill_in 'Linked', with: @offer_product.linked
    fill_in 'Offer', with: @offer_product.offer_id
    fill_in 'Quantity select', with: @offer_product.quantity_select
    fill_in 'Replacement product', with: @offer_product.replacement_product
    fill_in 'Replacement variant', with: @offer_product.replacement_variant
    fill_in 'Shop', with: @offer_product.shop_id
    fill_in 'Show image', with: @offer_product.show_image
    fill_in 'Show price', with: @offer_product.show_price
    fill_in 'Show title', with: @offer_product.show_title
    fill_in 'Text', with: @offer_product.text
    fill_in 'Variant price', with: @offer_product.variant_price
    click_on 'Create Offer product'

    assert_text 'Offer product was successfully created'
    click_on 'Back'
  end

  test 'updating a Offer product' do
    visit offer_products_url
    click_on 'Edit', match: :first

    fill_in 'Ab atc', with: @offer_product.ab_atc
    fill_in 'Ab test', with: @offer_product.ab_test
    fill_in 'Ab text', with: @offer_product.ab_text
    fill_in 'Atc', with: @offer_product.atc
    fill_in 'Compare price', with: @offer_product.compare_price
    fill_in 'Linked', with: @offer_product.linked
    fill_in 'Offer', with: @offer_product.offer_id
    fill_in 'Quantity select', with: @offer_product.quantity_select
    fill_in 'Replacement product', with: @offer_product.replacement_product
    fill_in 'Replacement variant', with: @offer_product.replacement_variant
    fill_in 'Shop', with: @offer_product.shop_id
    fill_in 'Show image', with: @offer_product.show_image
    fill_in 'Show price', with: @offer_product.show_price
    fill_in 'Show title', with: @offer_product.show_title
    fill_in 'Text', with: @offer_product.text
    fill_in 'Variant price', with: @offer_product.variant_price
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
