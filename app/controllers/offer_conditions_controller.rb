# frozen_string_literal: true

class OfferConditionsController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification
  before_action :set_offer_condition, only: %i[show edit update destroy]

  # GET /OfferConditions or /OfferConditions.json
  def index
    @offer_conditions = OfferCondition.all
  end

  # GET /OfferConditions/1 or /OfferConditions/1.json
  def show; end

  # GET /OfferConditions/new
  def new
    @offer_condition = OfferCondition.new
  end

  # GET /OfferConditions/1/edit
  def edit; end

  # POST /OfferConditions or /OfferConditions.json
  def create
    @offer_condition = OfferCondition.new(offer_condition_params)

    respond_to do |format|
      if @offer_condition.save
        format.html do
          redirect_to OfferCondition_url(@offer_condition), notice: 'Offer condition was successfully created.'
        end
        format.json { render :show, status: :created, location: @offer_condition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offer_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /OfferConditions/1 or /OfferConditions/1.json
  def update
    respond_to do |format|
      if @offer_condition.update(offer_condition_params)
        format.html do
          redirect_to OfferCondition_url(@offer_condition), notice: 'Offer condition was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @offer_condition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offer_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /OfferConditions/1 or /OfferConditions/1.json
  def destroy
    @offer_condition.destroy

    respond_to do |format|
      format.html { redirect_to offer_conditions_url, notice: 'Offer condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_offer_condition
    @offer_condition = OfferCondition.find(params[:id])
  end

  def offer_condition_params
    params.require(:offer_condition).permit(:offer_id, :block_id, :condition_id, :quantity, :level, :content,
                                            :product_id, :variant_id, :amount, :country)
  end
end
