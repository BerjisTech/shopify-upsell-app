require "application_system_test_case"

class OffersTest < ApplicationSystemTestCase
  setup do
    @offer = offers(:one)
  end

  test "visiting the index" do
    visit offers_url
    assert_selector "h1", text: "Offers"
  end

  test "creating a Offer" do
    visit offers_url
    click_on "New Offer"

    fill_in "Atc", with: @offer.atc
    fill_in "Auto add", with: @offer.auto_add
    fill_in "Close", with: @offer.close
    fill_in "Date", with: @offer.date
    fill_in "Discount code", with: @offer.discount_code
    fill_in "General block rule", with: @offer.general_block_rule
    fill_in "Has discount", with: @offer.has_discount
    fill_in "Layout", with: @offer.layout
    fill_in "Required checkout", with: @offer.required_checkout
    fill_in "Scheme", with: @offer.scheme
    fill_in "Shop", with: @offer.shop_id
    fill_in "Status", with: @offer.status
    fill_in "Stop show", with: @offer.stop_show
    fill_in "Text", with: @offer.text
    fill_in "Title", with: @offer.title
    fill_in "To checkout", with: @offer.to_checkout
    click_on "Create Offer"

    assert_text "Offer was successfully created"
    click_on "Back"
  end

  test "updating a Offer" do
    visit offers_url
    click_on "Edit", match: :first

    fill_in "Atc", with: @offer.atc
    fill_in "Auto add", with: @offer.auto_add
    fill_in "Close", with: @offer.close
    fill_in "Date", with: @offer.date
    fill_in "Discount code", with: @offer.discount_code
    fill_in "General block rule", with: @offer.general_block_rule
    fill_in "Has discount", with: @offer.has_discount
    fill_in "Layout", with: @offer.layout
    fill_in "Required checkout", with: @offer.required_checkout
    fill_in "Scheme", with: @offer.scheme
    fill_in "Shop", with: @offer.shop_id
    fill_in "Status", with: @offer.status
    fill_in "Stop show", with: @offer.stop_show
    fill_in "Text", with: @offer.text
    fill_in "Title", with: @offer.title
    fill_in "To checkout", with: @offer.to_checkout
    click_on "Update Offer"

    assert_text "Offer was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer" do
    visit offers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer was successfully destroyed"
  end
end
