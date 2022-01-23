# frozen_string_literal: true

class ConditionBlocksController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification

  before_action :set_condition_block, only: %i[show edit update destroy]

  # GET /ConditionBlocks or /ConditionBlocks.json
  def index
    @condition_blocks = ConditionBlock.all
  end

  # GET /ConditionBlocks/1 or /ConditionBlocks/1.json
  def show; end

  # GET /ConditionBlocks/new
  def new
    @condition_block = ConditionBlock.new
  end

  # GET /ConditionBlocks/1/edit
  def edit; end

  # POST /ConditionBlocks or /ConditionBlocks.json
  def create
    @condition_block = ConditionBlock.new(condition_block_params)

    respond_to do |format|
      if @condition_block.save
        format.html do
          redirect_to condition_block_url(@condition_block), notice: 'Condition block was successfully created.'
        end
        format.json { render :show, status: :created, location: @condition_block }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @condition_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ConditionBlocks/1 or /ConditionBlocks/1.json
  def update
    respond_to do |format|
      if @condition_block.update(condition_block_params)
        format.html do
          redirect_to condition_block_url(@condition_block), notice: 'Condition block was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @condition_block }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @condition_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ConditionBlocks/1 or /ConditionBlocks/1.json
  def destroy
    @condition_block.destroy

    respond_to do |format|
      format.html { redirect_to condition_blocks_url, notice: 'Condition block was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_condition_block
    @condition_block = ConditionBlock.find(params[:id])
  end

  def condition_block_params
    params.require(:condition_block).permit(:offer_id, :rule)
  end
end
