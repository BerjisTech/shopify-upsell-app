# frozen_string_literal: true

class AutoCollectionsController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification

  before_action :set_auto_collection, only: %i[show edit update destroy]

  # GET /AutoCollections or /AutoCollections.json
  def index
    @auto_collections = AutoCollection.all
  end

  # GET /AutoCollections/1 or /AutoCollections/1.json
  def show; end

  # GET /AutoCollections/new
  def new
    @auto_collection = AutoCollection.new
  end

  # GET /AutoCollections/1/edit
  def edit; end

  # POST /AutoCollections or /AutoCollections.json
  def create
    @auto_collection = AutoCollection.new(auto_collection_params)

    respond_to do |format|
      if @auto_collection.save
        format.html do
          redirect_to auto_collection_url(@auto_collection), notice: 'Auto collection was successfully created.'
        end
        format.json { render :show, status: :created, location: @auto_collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @auto_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /AutoCollections/1 or /AutoCollections/1.json
  def update
    respond_to do |format|
      if @auto_collection.update(auto_collection_params)
        format.html do
          redirect_to auto_collection_url(@auto_collection), notice: 'Auto collection was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @auto_collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @auto_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /AutoCollections/1 or /AutoCollections/1.json
  def destroy
    @auto_collection.destroy

    respond_to do |format|
      format.html { redirect_to auto_collections_url, notice: 'Auto collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_auto_collection
    @auto_collection = AutoCollection.find(params[:id])
  end

  def auto_collection_params
    params.require(:auto_collection).permit(:shop_id, :layout, :close, :atc, :show_title, :show_price, :show_image,
                                            :variant_price, :compare_price, :quantity_select, :has_discount, :discount_code, :to_checkout, :date, :status, :title, :text, :same_vendor)
  end
end
