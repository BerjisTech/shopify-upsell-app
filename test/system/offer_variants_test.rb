require "application_system_test_case"

class OfferVariantsTest < ApplicationSystemTestCase
  setup do
    @offer_variant = offer_variants(:one)
  end

  test "visiting the index" do
    visit offer_variants_url
    assert_selector "h1", text: "Offer Variants"
  end

  test "creating a Offer variant" do
    visit offer_variants_url
    click_on "New Offer Variant"

    fill_in "Offer", with: @offer_variant.offer_id
    fill_in "Product", with: @offer_variant.product
    fill_in "Variant", with: @offer_variant.variant
    click_on "Create Offer variant"

    assert_text "Offer variant was successfully created"
    click_on "Back"
  end

  test "updating a Offer variant" do
    visit offer_variants_url
    click_on "Edit", match: :first

    fill_in "Offer", with: @offer_variant.offer_id
    fill_in "Product", with: @offer_variant.product
    fill_in "Variant", with: @offer_variant.variant
    click_on "Update Offer variant"

    assert_text "Offer variant was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer variant" do
    visit offer_variants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer variant was successfully destroyed"
  end
end
