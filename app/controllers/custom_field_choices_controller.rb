class CustomFieldChoicesController < InheritedResources::Base

  private

    def custom_field_choice_params
      params.require(:custom_field_choice).permit(:custom_field_id, :offer_id, :product_id, :price, :value)
    end

end
