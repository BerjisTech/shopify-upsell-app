# frozen_string_literal: true

class OfferVariantsController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification

  before_action :set_offer_variant, only: %i[show edit update destroy]

  # GET /offer_variants or /offer_variants.json
  def index
    @offer_variants = OfferVariant.all
  end

  # GET /offer_variants/1 or /offer_variants/1.json
  def show; end

  # GET /offer_variants/new
  def new
    @offer_variant = OfferVariant.new
  end

  # GET /offer_variants/1/edit
  def edit; end

  # POST /offer_variants or /offer_variants.json
  def create
    @offer_variant = OfferVariant.new(offer_variant_params)

    respond_to do |format|
      if @offer_variant.save
        format.html { redirect_to offer_variant_url(@offer_variant), notice: 'Offer variant was successfully created.' }
        format.json { render :show, status: :created, location: @offer_variant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offer_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_variants/1 or /offer_variants/1.json
  def update
    respond_to do |format|
      if @offer_variant.update(offer_variant_params)
        format.html { redirect_to offer_variant_url(@offer_variant), notice: 'Offer variant was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer_variant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offer_variant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_variants/1 or /offer_variants/1.json
  def destroy
    @offer_variant.destroy

    respond_to do |format|
      format.html { redirect_to offer_variants_url, notice: 'Offer variant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_offer_variant
    @offer_variant = OfferVariant.find(params[:id])
  end

  def offer_variant_params
    params.require(:offer_variant).permit(:offer_id, :product, :variant)
  end
end
