class CustomFieldsController < InheritedResources::Base

  private

    def custom_field_params
      params.require(:custom_field).permit(:offer_id, :product_id, :field_type, :name, :placeholder, :price, :required)
    end

end
