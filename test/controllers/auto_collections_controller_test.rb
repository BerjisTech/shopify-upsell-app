# frozen_string_literal: true

require 'test_helper'

class AutoCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_collection = auto_collections(:one)
  end

  test 'should get index' do
    get auto_collections_url
    assert_response :success
  end

  test 'should get new' do
    get new_auto_collection_url
    assert_response :success
  end

  test 'should create auto_collection' do
    assert_difference('AutoCollection.count') do
      post auto_collections_url,
           params: { auto_collection: { atc: @auto_collection.atc, close: @auto_collection.close,
                                        compare_price: @auto_collection.compare_price, date: @auto_collection.date, discount_code: @auto_collection.discount_code, has_discount: @auto_collection.has_discount, layout: @auto_collection.layout, quantity_select: @auto_collection.quantity_select, same_vendor: @auto_collection.same_vendor, shop_id: @auto_collection.shop_id, show_image: @auto_collection.show_image, show_price: @auto_collection.show_price, show_title: @auto_collection.show_title, status: @auto_collection.status, text: @auto_collection.text, title: @auto_collection.title, to_checkout: @auto_collection.to_checkout, variant_price: @auto_collection.variant_price } }
    end

    assert_redirected_to auto_collection_url(AutoCollection.last)
  end

  test 'should show auto_collection' do
    get auto_collection_url(@auto_collection)
    assert_response :success
  end

  test 'should get edit' do
    get edit_auto_collection_url(@auto_collection)
    assert_response :success
  end

  test 'should update auto_collection' do
    patch auto_collection_url(@auto_collection),
          params: { auto_collection: { atc: @auto_collection.atc, close: @auto_collection.close,
                                       compare_price: @auto_collection.compare_price, date: @auto_collection.date, discount_code: @auto_collection.discount_code, has_discount: @auto_collection.has_discount, layout: @auto_collection.layout, quantity_select: @auto_collection.quantity_select, same_vendor: @auto_collection.same_vendor, shop_id: @auto_collection.shop_id, show_image: @auto_collection.show_image, show_price: @auto_collection.show_price, show_title: @auto_collection.show_title, status: @auto_collection.status, text: @auto_collection.text, title: @auto_collection.title, to_checkout: @auto_collection.to_checkout, variant_price: @auto_collection.variant_price } }
    assert_redirected_to auto_collection_url(@auto_collection)
  end

  test 'should destroy auto_collection' do
    assert_difference('AutoCollection.count', -1) do
      delete auto_collection_url(@auto_collection)
    end

    assert_redirected_to auto_collections_url
  end
end
