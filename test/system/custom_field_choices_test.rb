require "application_system_test_case"

class CustomFieldChoicesTest < ApplicationSystemTestCase
  setup do
    @custom_field_choice = custom_field_choices(:one)
  end

  test "visiting the index" do
    visit custom_field_choices_url
    assert_selector "h1", text: "Custom Field Choices"
  end

  test "creating a Custom field choice" do
    visit custom_field_choices_url
    click_on "New Custom Field Choice"

    fill_in "Custom field", with: @custom_field_choice.custom_field_id
    fill_in "Offer", with: @custom_field_choice.offer_id
    fill_in "Price", with: @custom_field_choice.price
    fill_in "Product", with: @custom_field_choice.product_id
    fill_in "Value", with: @custom_field_choice.value
    click_on "Create Custom field choice"

    assert_text "Custom field choice was successfully created"
    click_on "Back"
  end

  test "updating a Custom field choice" do
    visit custom_field_choices_url
    click_on "Edit", match: :first

    fill_in "Custom field", with: @custom_field_choice.custom_field_id
    fill_in "Offer", with: @custom_field_choice.offer_id
    fill_in "Price", with: @custom_field_choice.price
    fill_in "Product", with: @custom_field_choice.product_id
    fill_in "Value", with: @custom_field_choice.value
    click_on "Update Custom field choice"

    assert_text "Custom field choice was successfully updated"
    click_on "Back"
  end

  test "destroying a Custom field choice" do
    visit custom_field_choices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custom field choice was successfully destroyed"
  end
end
