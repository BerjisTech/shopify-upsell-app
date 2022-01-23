class OfferProductsController < InheritedResources::Base

  private

    def offer_product_params
      params.require(:offer_product).permit(:offer_id, :shop_id, :text, :atc, :show_title, :show_price, :show_image, :variant_price, :compare_price, :linked, :quantity_select, :ab_test, :ab_text, :ab_atc, :replacement_product, :replacement_variant)
    end

end
