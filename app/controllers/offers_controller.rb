class OffersController < InheritedResources::Base

  private

    def offer_params
      params.require(:offer).permit(:shop_id, :date, :title, :scheme, :stop_show, :layout, :required_checkout, :has_discount, :discount_code, :general_block_rule, :to_checkout, :auto_add, :status, :text, :atc, :close)
    end

end
