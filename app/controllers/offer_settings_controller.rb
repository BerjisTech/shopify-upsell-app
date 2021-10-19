class OfferSettingsController < ApplicationController
  before_action :set_offer_setting, only: %i[ show edit update destroy ]

  # GET /offer_settings or /offer_settings.json
  def index
    @offer_settings = OfferSetting.all
  end

  # GET /offer_settings/1 or /offer_settings/1.json
  def show
  end

  # GET /offer_settings/new
  def new
    @offer_setting = OfferSetting.new
  end

  # GET /offer_settings/1/edit
  def edit
  end

  # POST /offer_settings or /offer_settings.json
  def create
    @offer_setting = OfferSetting.new(offer_setting_params)

    respond_to do |format|
      if @offer_setting.save
        format.html { redirect_to @offer_setting, notice: "Offer setting was successfully created." }
        format.json { render :show, status: :created, location: @offer_setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offer_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offer_settings/1 or /offer_settings/1.json
  def update
    respond_to do |format|
      if @offer_setting.update(offer_setting_params)
        format.html { redirect_to @offer_setting, notice: "Offer setting was successfully updated." }
        format.json { render :show, status: :ok, location: @offer_setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offer_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offer_settings/1 or /offer_settings/1.json
  def destroy
    @offer_setting.destroy
    respond_to do |format|
      format.html { redirect_to offer_settings_url, notice: "Offer setting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer_setting
      @offer_setting = OfferSetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offer_setting_params
      params.require(:offer_setting).permit(:offer_id, :button_color, :button_font, :button_border, :button_font_size, :button_margin_top, :button_margin_bottom)
    end
end
