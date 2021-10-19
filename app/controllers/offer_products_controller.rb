class OfferProductsController < ApplicationController
  before_action :set_offer_product, only: %i[ show edit update destroy ]

  # GET /offer_products or /offer_products.json
  def index
    @offer_products = OfferProduct.all
  end

  # GET /offer_products/1 or /offer_products/1.json
  def show
  end

  # GET /offer_products/new
  def new
    @offer_product = OfferProduct.new
  end

  # GET /offer_products/1/edit
  def edit
  end

  # POST /offer_products or /offer_products.json
  def create
    @offer_product = OfferProduct.new(offer_product_params)

    respond_to do |format|
      if @offer_product.save
        format.html { redirect_to @offer_product, notice: "Offer product was successfully created." }
        format.json { render :show, status: :created, location: @offer_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offer_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_products/1 or /offer_products/1.json
  def update
    respond_to do |format|
      if @offer_product.update(offer_product_params)
        format.html { redirect_to @offer_product, notice: "Offer product was successfully updated." }
        format.json { render :show, status: :ok, location: @offer_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offer_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_products/1 or /offer_products/1.json
  def destroy
    @offer_product.destroy
    respond_to do |format|
      format.html { redirect_to offer_products_url, notice: "Offer product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_product
      @offer_product = OfferProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offer_product_params
      params.require(:offer_product).permit(:product_id, :name)
    end
end
