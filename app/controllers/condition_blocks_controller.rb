class ConditionBlocksController < InheritedResources::Base

  private

    def condition_block_params
      params.require(:condition_block).permit(:offer_id, :rule)
    end

end
