require "test_helper"

class OffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer = offers(:one)
  end

  test "should get index" do
    get offers_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_url
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post offers_url, params: { offer: { atc: @offer.atc, auto_add: @offer.auto_add, close: @offer.close, date: @offer.date, discount_code: @offer.discount_code, general_block_rule: @offer.general_block_rule, has_discount: @offer.has_discount, layout: @offer.layout, required_checkout: @offer.required_checkout, scheme: @offer.scheme, shop_id: @offer.shop_id, status: @offer.status, stop_show: @offer.stop_show, text: @offer.text, title: @offer.title, to_checkout: @offer.to_checkout } }
    end

    assert_redirected_to offer_url(Offer.last)
  end

  test "should show offer" do
    get offer_url(@offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_url(@offer)
    assert_response :success
  end

  test "should update offer" do
    patch offer_url(@offer), params: { offer: { atc: @offer.atc, auto_add: @offer.auto_add, close: @offer.close, date: @offer.date, discount_code: @offer.discount_code, general_block_rule: @offer.general_block_rule, has_discount: @offer.has_discount, layout: @offer.layout, required_checkout: @offer.required_checkout, scheme: @offer.scheme, shop_id: @offer.shop_id, status: @offer.status, stop_show: @offer.stop_show, text: @offer.text, title: @offer.title, to_checkout: @offer.to_checkout } }
    assert_redirected_to offer_url(@offer)
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete offer_url(@offer)
    end

    assert_redirected_to offers_url
  end
end
