require "test_helper"

class StatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get stats_url
    assert_response :success
  end

  test "should get new" do
    get new_stat_url
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post stats_url, params: { stat: { action: @stat.action, browser: @stat.browser, cart_items: @stat.cart_items, country: @stat.country, date: @stat.date, device: @stat.device, ip: @stat.ip, offer_id: @stat.offer_id, page: @stat.page, position_on_page: @stat.position_on_page, price: @stat.price, product: @stat.product, quantity: @stat.quantity, shop_id: @stat.shop_id, type: @stat.type, variant: @stat.variant } }
    end

    assert_redirected_to stat_url(Stat.last)
  end

  test "should show stat" do
    get stat_url(@stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_stat_url(@stat)
    assert_response :success
  end

  test "should update stat" do
    patch stat_url(@stat), params: { stat: { action: @stat.action, browser: @stat.browser, cart_items: @stat.cart_items, country: @stat.country, date: @stat.date, device: @stat.device, ip: @stat.ip, offer_id: @stat.offer_id, page: @stat.page, position_on_page: @stat.position_on_page, price: @stat.price, product: @stat.product, quantity: @stat.quantity, shop_id: @stat.shop_id, type: @stat.type, variant: @stat.variant } }
    assert_redirected_to stat_url(@stat)
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete stat_url(@stat)
    end

    assert_redirected_to stats_url
  end
end
