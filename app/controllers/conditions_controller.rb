class ConditionsController < InheritedResources::Base

  private

    def condition_params
      params.require(:condition).permit(:name, :description)
    end

end
