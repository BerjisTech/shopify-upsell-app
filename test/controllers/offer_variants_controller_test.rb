require "test_helper"

class OfferVariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_variant = offer_variants(:one)
  end

  test "should get index" do
    get offer_variants_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_variant_url
    assert_response :success
  end

  test "should create offer_variant" do
    assert_difference('OfferVariant.count') do
      post offer_variants_url, params: { offer_variant: { offer_id: @offer_variant.offer_id, product: @offer_variant.product, variant: @offer_variant.variant } }
    end

    assert_redirected_to offer_variant_url(OfferVariant.last)
  end

  test "should show offer_variant" do
    get offer_variant_url(@offer_variant)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_variant_url(@offer_variant)
    assert_response :success
  end

  test "should update offer_variant" do
    patch offer_variant_url(@offer_variant), params: { offer_variant: { offer_id: @offer_variant.offer_id, product: @offer_variant.product, variant: @offer_variant.variant } }
    assert_redirected_to offer_variant_url(@offer_variant)
  end

  test "should destroy offer_variant" do
    assert_difference('OfferVariant.count', -1) do
      delete offer_variant_url(@offer_variant)
    end

    assert_redirected_to offer_variants_url
  end
end
