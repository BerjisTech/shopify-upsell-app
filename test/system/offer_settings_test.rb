require "application_system_test_case"

class OfferSettingsTest < ApplicationSystemTestCase
  setup do
    @offer_setting = offer_settings(:one)
  end

  test "visiting the index" do
    visit offer_settings_url
    assert_selector "h1", text: "Offer Settings"
  end

  test "creating a Offer setting" do
    visit offer_settings_url
    click_on "New Offer Setting"

    fill_in "Button border", with: @offer_setting.button_border
    fill_in "Button color", with: @offer_setting.button_color
    fill_in "Button font", with: @offer_setting.button_font
    fill_in "Button font size", with: @offer_setting.button_font_size
    fill_in "Button margin bottom", with: @offer_setting.button_margin_bottom
    fill_in "Button margin top", with: @offer_setting.button_margin_top
    fill_in "Offer", with: @offer_setting.offer_id
    click_on "Create Offer setting"

    assert_text "Offer setting was successfully created"
    click_on "Back"
  end

  test "updating a Offer setting" do
    visit offer_settings_url
    click_on "Edit", match: :first

    fill_in "Button border", with: @offer_setting.button_border
    fill_in "Button color", with: @offer_setting.button_color
    fill_in "Button font", with: @offer_setting.button_font
    fill_in "Button font size", with: @offer_setting.button_font_size
    fill_in "Button margin bottom", with: @offer_setting.button_margin_bottom
    fill_in "Button margin top", with: @offer_setting.button_margin_top
    fill_in "Offer", with: @offer_setting.offer_id
    click_on "Update Offer setting"

    assert_text "Offer setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer setting" do
    visit offer_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer setting was successfully destroyed"
  end
end
