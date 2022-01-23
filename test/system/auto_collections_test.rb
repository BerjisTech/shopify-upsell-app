# frozen_string_literal: true

require 'application_system_test_case'

class AutoCollectionsTest < ApplicationSystemTestCase
  setup do
    @auto_collection = auto_collections(:one)
  end

  test 'visiting the index' do
    visit auto_collections_url
    assert_selector 'h1', text: 'Auto Collections'
  end

  test 'creating a Auto collection' do
    visit auto_collections_url
    click_on 'New Auto Collection'

    fill_in 'Atc', with: @auto_collection.atc
    fill_in 'Close', with: @auto_collection.close
    fill_in 'Compare price', with: @auto_collection.compare_price
    fill_in 'Date', with: @auto_collection.date
    fill_in 'Discount code', with: @auto_collection.discount_code
    fill_in 'Has discount', with: @auto_collection.has_discount
    fill_in 'Layout', with: @auto_collection.layout
    fill_in 'Quantity select', with: @auto_collection.quantity_select
    fill_in 'Same vendor', with: @auto_collection.same_vendor
    fill_in 'Shop', with: @auto_collection.shop_id
    fill_in 'Show image', with: @auto_collection.show_image
    fill_in 'Show price', with: @auto_collection.show_price
    fill_in 'Show title', with: @auto_collection.show_title
    fill_in 'Status', with: @auto_collection.status
    fill_in 'Text', with: @auto_collection.text
    fill_in 'Title', with: @auto_collection.title
    fill_in 'To checkout', with: @auto_collection.to_checkout
    fill_in 'Variant price', with: @auto_collection.variant_price
    click_on 'Create Auto collection'

    assert_text 'Auto collection was successfully created'
    click_on 'Back'
  end

  test 'updating a Auto collection' do
    visit auto_collections_url
    click_on 'Edit', match: :first

    fill_in 'Atc', with: @auto_collection.atc
    fill_in 'Close', with: @auto_collection.close
    fill_in 'Compare price', with: @auto_collection.compare_price
    fill_in 'Date', with: @auto_collection.date
    fill_in 'Discount code', with: @auto_collection.discount_code
    fill_in 'Has discount', with: @auto_collection.has_discount
    fill_in 'Layout', with: @auto_collection.layout
    fill_in 'Quantity select', with: @auto_collection.quantity_select
    fill_in 'Same vendor', with: @auto_collection.same_vendor
    fill_in 'Shop', with: @auto_collection.shop_id
    fill_in 'Show image', with: @auto_collection.show_image
    fill_in 'Show price', with: @auto_collection.show_price
    fill_in 'Show title', with: @auto_collection.show_title
    fill_in 'Status', with: @auto_collection.status
    fill_in 'Text', with: @auto_collection.text
    fill_in 'Title', with: @auto_collection.title
    fill_in 'To checkout', with: @auto_collection.to_checkout
    fill_in 'Variant price', with: @auto_collection.variant_price
    click_on 'Update Auto collection'

    assert_text 'Auto collection was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Auto collection' do
    visit auto_collections_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Auto collection was successfully destroyed'
  end
end
