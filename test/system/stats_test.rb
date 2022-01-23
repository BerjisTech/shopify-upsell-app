require "application_system_test_case"

class StatsTest < ApplicationSystemTestCase
  setup do
    @stat = stats(:one)
  end

  test "visiting the index" do
    visit stats_url
    assert_selector "h1", text: "Stats"
  end

  test "creating a Stat" do
    visit stats_url
    click_on "New Stat"

    fill_in "Action", with: @stat.action
    fill_in "Browser", with: @stat.browser
    fill_in "Cart items", with: @stat.cart_items
    fill_in "Country", with: @stat.country
    fill_in "Date", with: @stat.date
    fill_in "Device", with: @stat.device
    fill_in "Ip", with: @stat.ip
    fill_in "Offer", with: @stat.offer_id
    fill_in "Page", with: @stat.page
    fill_in "Position on page", with: @stat.position_on_page
    fill_in "Price", with: @stat.price
    fill_in "Product", with: @stat.product
    fill_in "Quantity", with: @stat.quantity
    fill_in "Shop", with: @stat.shop_id
    fill_in "Type", with: @stat.type
    fill_in "Variant", with: @stat.variant
    click_on "Create Stat"

    assert_text "Stat was successfully created"
    click_on "Back"
  end

  test "updating a Stat" do
    visit stats_url
    click_on "Edit", match: :first

    fill_in "Action", with: @stat.action
    fill_in "Browser", with: @stat.browser
    fill_in "Cart items", with: @stat.cart_items
    fill_in "Country", with: @stat.country
    fill_in "Date", with: @stat.date
    fill_in "Device", with: @stat.device
    fill_in "Ip", with: @stat.ip
    fill_in "Offer", with: @stat.offer_id
    fill_in "Page", with: @stat.page
    fill_in "Position on page", with: @stat.position_on_page
    fill_in "Price", with: @stat.price
    fill_in "Product", with: @stat.product
    fill_in "Quantity", with: @stat.quantity
    fill_in "Shop", with: @stat.shop_id
    fill_in "Type", with: @stat.type
    fill_in "Variant", with: @stat.variant
    click_on "Update Stat"

    assert_text "Stat was successfully updated"
    click_on "Back"
  end

  test "destroying a Stat" do
    visit stats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stat was successfully destroyed"
  end
end
