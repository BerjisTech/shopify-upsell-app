require "test_helper"

class OfferConditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_condition = offer_conditions(:one)
  end

  test "should get index" do
    get offer_conditions_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_condition_url
    assert_response :success
  end

  test "should create offer_condition" do
    assert_difference('OfferCondition.count') do
      post offer_conditions_url, params: { offer_condition: { amount: @offer_condition.amount, block_id: @offer_condition.block_id, condition_id: @offer_condition.condition_id, content: @offer_condition.content, country: @offer_condition.country, level: @offer_condition.level, offer_id: @offer_condition.offer_id, product_id: @offer_condition.product_id, quantity: @offer_condition.quantity, variant_id: @offer_condition.variant_id } }
    end

    assert_redirected_to offer_condition_url(OfferCondition.last)
  end

  test "should show offer_condition" do
    get offer_condition_url(@offer_condition)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_condition_url(@offer_condition)
    assert_response :success
  end

  test "should update offer_condition" do
    patch offer_condition_url(@offer_condition), params: { offer_condition: { amount: @offer_condition.amount, block_id: @offer_condition.block_id, condition_id: @offer_condition.condition_id, content: @offer_condition.content, country: @offer_condition.country, level: @offer_condition.level, offer_id: @offer_condition.offer_id, product_id: @offer_condition.product_id, quantity: @offer_condition.quantity, variant_id: @offer_condition.variant_id } }
    assert_redirected_to offer_condition_url(@offer_condition)
  end

  test "should destroy offer_condition" do
    assert_difference('OfferCondition.count', -1) do
      delete offer_condition_url(@offer_condition)
    end

    assert_redirected_to offer_conditions_url
  end
end
