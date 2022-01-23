class OfferVariantsController < InheritedResources::Base

  private

    def offer_variant_params
      params.require(:offer_variant).permit(:offer_id, :product, :variant)
    end

end
