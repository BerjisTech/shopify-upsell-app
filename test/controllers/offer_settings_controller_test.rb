require "test_helper"

class OfferSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_setting = offer_settings(:one)
  end

  test "should get index" do
    get offer_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_setting_url
    assert_response :success
  end

  test "should create offer_setting" do
    assert_difference('OfferSetting.count') do
      post offer_settings_url, params: { offer_setting: { button_border: @offer_setting.button_border, button_color: @offer_setting.button_color, button_font: @offer_setting.button_font, button_font_size: @offer_setting.button_font_size, button_margin_bottom: @offer_setting.button_margin_bottom, button_margin_top: @offer_setting.button_margin_top, offer_id: @offer_setting.offer_id } }
    end

    assert_redirected_to offer_setting_url(OfferSetting.last)
  end

  test "should show offer_setting" do
    get offer_setting_url(@offer_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_setting_url(@offer_setting)
    assert_response :success
  end

  test "should update offer_setting" do
    patch offer_setting_url(@offer_setting), params: { offer_setting: { button_border: @offer_setting.button_border, button_color: @offer_setting.button_color, button_font: @offer_setting.button_font, button_font_size: @offer_setting.button_font_size, button_margin_bottom: @offer_setting.button_margin_bottom, button_margin_top: @offer_setting.button_margin_top, offer_id: @offer_setting.offer_id } }
    assert_redirected_to offer_setting_url(@offer_setting)
  end

  test "should destroy offer_setting" do
    assert_difference('OfferSetting.count', -1) do
      delete offer_setting_url(@offer_setting)
    end

    assert_redirected_to offer_settings_url
  end
end
