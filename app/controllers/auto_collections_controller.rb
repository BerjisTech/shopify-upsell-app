class AutoCollectionsController < InheritedResources::Base

  private

    def auto_collection_params
      params.require(:auto_collection).permit(:shop_id, :layout, :close, :atc, :show_title, :show_price, :show_image, :variant_price, :compare_price, :quantity_select, :has_discount, :discount_code, :to_checkout, :date, :status, :title, :text, :same_vendor)
    end

end
