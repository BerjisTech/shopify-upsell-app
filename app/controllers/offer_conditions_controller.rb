class OfferConditionsController < InheritedResources::Base

  private

    def offer_condition_params
      params.require(:offer_condition).permit(:offer_id, :block_id, :condition_id, :quantity, :level, :content, :product_id, :variant_id, :amount, :country)
    end

end
