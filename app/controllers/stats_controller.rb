class StatsController < InheritedResources::Base

  private

    def stat_params
      params.require(:stat).permit(:date, :shop_id, :offer_id, :product, :variant, :quantity, :ip, :country, :type, :action, :page, :position_on_page, :device, :browser, :cart_items, :price)
    end

end
