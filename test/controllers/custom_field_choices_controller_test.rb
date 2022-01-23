require "test_helper"

class CustomFieldChoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_field_choice = custom_field_choices(:one)
  end

  test "should get index" do
    get custom_field_choices_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_field_choice_url
    assert_response :success
  end

  test "should create custom_field_choice" do
    assert_difference('CustomFieldChoice.count') do
      post custom_field_choices_url, params: { custom_field_choice: { custom_field_id: @custom_field_choice.custom_field_id, offer_id: @custom_field_choice.offer_id, price: @custom_field_choice.price, product_id: @custom_field_choice.product_id, value: @custom_field_choice.value } }
    end

    assert_redirected_to custom_field_choice_url(CustomFieldChoice.last)
  end

  test "should show custom_field_choice" do
    get custom_field_choice_url(@custom_field_choice)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_field_choice_url(@custom_field_choice)
    assert_response :success
  end

  test "should update custom_field_choice" do
    patch custom_field_choice_url(@custom_field_choice), params: { custom_field_choice: { custom_field_id: @custom_field_choice.custom_field_id, offer_id: @custom_field_choice.offer_id, price: @custom_field_choice.price, product_id: @custom_field_choice.product_id, value: @custom_field_choice.value } }
    assert_redirected_to custom_field_choice_url(@custom_field_choice)
  end

  test "should destroy custom_field_choice" do
    assert_difference('CustomFieldChoice.count', -1) do
      delete custom_field_choice_url(@custom_field_choice)
    end

    assert_redirected_to custom_field_choices_url
  end
end
