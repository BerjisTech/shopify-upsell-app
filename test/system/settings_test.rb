# frozen_string_literal: true

require 'application_system_test_case'

class SettingsTest < ApplicationSystemTestCase
  setup do
    @setting = settings(:one)
  end

  test 'visiting the index' do
    visit settings_url
    assert_selector 'h1', text: 'Settings'
  end

  test 'creating a Setting' do
    visit settings_url
    click_on 'New Setting'

    fill_in 'Button bc', with: @setting.button_bc
    fill_in 'Button bg', with: @setting.button_bg
    fill_in 'Button border', with: @setting.button_border
    fill_in 'Button bs', with: @setting.button_bs
    fill_in 'Button color', with: @setting.button_color
    fill_in 'Button font', with: @setting.button_font
    fill_in 'Button mb', with: @setting.button_mb
    fill_in 'Button mt', with: @setting.button_mt
    fill_in 'Button radius', with: @setting.button_radius
    fill_in 'Button size', with: @setting.button_size
    fill_in 'C price color', with: @setting.c_price_color
    fill_in 'C price size', with: @setting.c_price_size
    fill_in 'Cart location', with: @setting.cart_location
    fill_in 'Cart position', with: @setting.cart_position
    fill_in 'Drawer location', with: @setting.drawer_location
    fill_in 'Drawer position', with: @setting.drawer_position
    fill_in 'Drawer refresh', with: @setting.drawer_refresh
    fill_in 'Image bc', with: @setting.image_bc
    fill_in 'Image border', with: @setting.image_border
    fill_in 'Image bs', with: @setting.image_bs
    fill_in 'Image radius', with: @setting.image_radius
    fill_in 'Image size', with: @setting.image_size
    fill_in 'Layout bg', with: @setting.layout_bg
    fill_in 'Layout color', with: @setting.layout_color
    fill_in 'Layout font', with: @setting.layout_font
    fill_in 'Layout mb', with: @setting.layout_mb
    fill_in 'Layout mt', with: @setting.layout_mt
    fill_in 'Layout size', with: @setting.layout_size
    fill_in 'Offer bc', with: @setting.offer_bc
    fill_in 'Offer border', with: @setting.offer_border
    fill_in 'Offer bs', with: @setting.offer_bs
    fill_in 'Offer radius', with: @setting.offer_radius
    fill_in 'Override', with: @setting.override
    fill_in 'Price color', with: @setting.price_color
    fill_in 'Price font', with: @setting.price_font
    fill_in 'Price size', with: @setting.price_size
    fill_in 'Refresh state', with: @setting.refresh_state
    fill_in 'Shop', with: @setting.shop_id
    fill_in 'Text color', with: @setting.text_color
    fill_in 'Text font', with: @setting.text_font
    fill_in 'Text size', with: @setting.text_size
    fill_in 'Title color', with: @setting.title_color
    fill_in 'Title font', with: @setting.title_font
    fill_in 'Title size', with: @setting.title_size
    click_on 'Create Setting'

    assert_text 'Setting was successfully created'
    click_on 'Back'
  end

  test 'updating a Setting' do
    visit settings_url
    click_on 'Edit', match: :first

    fill_in 'Button bc', with: @setting.button_bc
    fill_in 'Button bg', with: @setting.button_bg
    fill_in 'Button border', with: @setting.button_border
    fill_in 'Button bs', with: @setting.button_bs
    fill_in 'Button color', with: @setting.button_color
    fill_in 'Button font', with: @setting.button_font
    fill_in 'Button mb', with: @setting.button_mb
    fill_in 'Button mt', with: @setting.button_mt
    fill_in 'Button radius', with: @setting.button_radius
    fill_in 'Button size', with: @setting.button_size
    fill_in 'C price color', with: @setting.c_price_color
    fill_in 'C price size', with: @setting.c_price_size
    fill_in 'Cart location', with: @setting.cart_location
    fill_in 'Cart position', with: @setting.cart_position
    fill_in 'Drawer location', with: @setting.drawer_location
    fill_in 'Drawer position', with: @setting.drawer_position
    fill_in 'Drawer refresh', with: @setting.drawer_refresh
    fill_in 'Image bc', with: @setting.image_bc
    fill_in 'Image border', with: @setting.image_border
    fill_in 'Image bs', with: @setting.image_bs
    fill_in 'Image radius', with: @setting.image_radius
    fill_in 'Image size', with: @setting.image_size
    fill_in 'Layout bg', with: @setting.layout_bg
    fill_in 'Layout color', with: @setting.layout_color
    fill_in 'Layout font', with: @setting.layout_font
    fill_in 'Layout mb', with: @setting.layout_mb
    fill_in 'Layout mt', with: @setting.layout_mt
    fill_in 'Layout size', with: @setting.layout_size
    fill_in 'Offer bc', with: @setting.offer_bc
    fill_in 'Offer border', with: @setting.offer_border
    fill_in 'Offer bs', with: @setting.offer_bs
    fill_in 'Offer radius', with: @setting.offer_radius
    fill_in 'Override', with: @setting.override
    fill_in 'Price color', with: @setting.price_color
    fill_in 'Price font', with: @setting.price_font
    fill_in 'Price size', with: @setting.price_size
    fill_in 'Refresh state', with: @setting.refresh_state
    fill_in 'Shop', with: @setting.shop_id
    fill_in 'Text color', with: @setting.text_color
    fill_in 'Text font', with: @setting.text_font
    fill_in 'Text size', with: @setting.text_size
    fill_in 'Title color', with: @setting.title_color
    fill_in 'Title font', with: @setting.title_font
    fill_in 'Title size', with: @setting.title_size
    click_on 'Update Setting'

    assert_text 'Setting was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Setting' do
    visit settings_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Setting was successfully destroyed'
  end
end
