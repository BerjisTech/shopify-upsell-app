require "test_helper"

class SettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting = settings(:one)
  end

  test "should get index" do
    get settings_url
    assert_response :success
  end

  test "should get new" do
    get new_setting_url
    assert_response :success
  end

  test "should create setting" do
    assert_difference('Setting.count') do
      post settings_url, params: { setting: { button_bc: @setting.button_bc, button_bg: @setting.button_bg, button_border: @setting.button_border, button_bs: @setting.button_bs, button_color: @setting.button_color, button_font: @setting.button_font, button_mb: @setting.button_mb, button_mt: @setting.button_mt, button_radius: @setting.button_radius, button_size: @setting.button_size, c_price_color: @setting.c_price_color, c_price_size: @setting.c_price_size, cart_location: @setting.cart_location, cart_position: @setting.cart_position, drawer_location: @setting.drawer_location, drawer_position: @setting.drawer_position, drawer_refresh: @setting.drawer_refresh, image_bc: @setting.image_bc, image_border: @setting.image_border, image_bs: @setting.image_bs, image_radius: @setting.image_radius, image_size: @setting.image_size, layout_bg: @setting.layout_bg, layout_color: @setting.layout_color, layout_font: @setting.layout_font, layout_mb: @setting.layout_mb, layout_mt: @setting.layout_mt, layout_size: @setting.layout_size, offer_bc: @setting.offer_bc, offer_border: @setting.offer_border, offer_bs: @setting.offer_bs, offer_radius: @setting.offer_radius, override: @setting.override, price_color: @setting.price_color, price_font: @setting.price_font, price_size: @setting.price_size, refresh_state: @setting.refresh_state, shop_id: @setting.shop_id, text_color: @setting.text_color, text_font: @setting.text_font, text_size: @setting.text_size, title_color: @setting.title_color, title_font: @setting.title_font, title_size: @setting.title_size } }
    end

    assert_redirected_to setting_url(Setting.last)
  end

  test "should show setting" do
    get setting_url(@setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_setting_url(@setting)
    assert_response :success
  end

  test "should update setting" do
    patch setting_url(@setting), params: { setting: { button_bc: @setting.button_bc, button_bg: @setting.button_bg, button_border: @setting.button_border, button_bs: @setting.button_bs, button_color: @setting.button_color, button_font: @setting.button_font, button_mb: @setting.button_mb, button_mt: @setting.button_mt, button_radius: @setting.button_radius, button_size: @setting.button_size, c_price_color: @setting.c_price_color, c_price_size: @setting.c_price_size, cart_location: @setting.cart_location, cart_position: @setting.cart_position, drawer_location: @setting.drawer_location, drawer_position: @setting.drawer_position, drawer_refresh: @setting.drawer_refresh, image_bc: @setting.image_bc, image_border: @setting.image_border, image_bs: @setting.image_bs, image_radius: @setting.image_radius, image_size: @setting.image_size, layout_bg: @setting.layout_bg, layout_color: @setting.layout_color, layout_font: @setting.layout_font, layout_mb: @setting.layout_mb, layout_mt: @setting.layout_mt, layout_size: @setting.layout_size, offer_bc: @setting.offer_bc, offer_border: @setting.offer_border, offer_bs: @setting.offer_bs, offer_radius: @setting.offer_radius, override: @setting.override, price_color: @setting.price_color, price_font: @setting.price_font, price_size: @setting.price_size, refresh_state: @setting.refresh_state, shop_id: @setting.shop_id, text_color: @setting.text_color, text_font: @setting.text_font, text_size: @setting.text_size, title_color: @setting.title_color, title_font: @setting.title_font, title_size: @setting.title_size } }
    assert_redirected_to setting_url(@setting)
  end

  test "should destroy setting" do
    assert_difference('Setting.count', -1) do
      delete setting_url(@setting)
    end

    assert_redirected_to settings_url
  end
end
