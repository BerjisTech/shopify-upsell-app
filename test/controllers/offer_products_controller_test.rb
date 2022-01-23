require "test_helper"

class OfferProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_product = offer_products(:one)
  end

  test "should get index" do
    get offer_products_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_product_url
    assert_response :success
  end

  test "should create offer_product" do
    assert_difference('OfferProduct.count') do
      post offer_products_url, params: { offer_product: { ab_atc: @offer_product.ab_atc, ab_test: @offer_product.ab_test, ab_text: @offer_product.ab_text, atc: @offer_product.atc, compare_price: @offer_product.compare_price, linked: @offer_product.linked, offer_id: @offer_product.offer_id, quantity_select: @offer_product.quantity_select, replacement_product: @offer_product.replacement_product, replacement_variant: @offer_product.replacement_variant, shop_id: @offer_product.shop_id, show_image: @offer_product.show_image, show_price: @offer_product.show_price, show_title: @offer_product.show_title, text: @offer_product.text, variant_price: @offer_product.variant_price } }
    end

    assert_redirected_to offer_product_url(OfferProduct.last)
  end

  test "should show offer_product" do
    get offer_product_url(@offer_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_product_url(@offer_product)
    assert_response :success
  end

  test "should update offer_product" do
    patch offer_product_url(@offer_product), params: { offer_product: { ab_atc: @offer_product.ab_atc, ab_test: @offer_product.ab_test, ab_text: @offer_product.ab_text, atc: @offer_product.atc, compare_price: @offer_product.compare_price, linked: @offer_product.linked, offer_id: @offer_product.offer_id, quantity_select: @offer_product.quantity_select, replacement_product: @offer_product.replacement_product, replacement_variant: @offer_product.replacement_variant, shop_id: @offer_product.shop_id, show_image: @offer_product.show_image, show_price: @offer_product.show_price, show_title: @offer_product.show_title, text: @offer_product.text, variant_price: @offer_product.variant_price } }
    assert_redirected_to offer_product_url(@offer_product)
  end

  test "should destroy offer_product" do
    assert_difference('OfferProduct.count', -1) do
      delete offer_product_url(@offer_product)
    end

    assert_redirected_to offer_products_url
  end
end
