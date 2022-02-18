# frozen_string_literal: true

class SettingsController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification

  before_action :set_setting, only: %i[show edit update destroy]

  # GET /settings or /settings.json
  def index
    @settings = Setting.all
  end

  # GET /settings/1 or /settings/1.json
  def show; end

  # GET /settings/new
  def new
    @setting = Setting.new
  end

  # GET /settings/1/edit
  def edit; end

  # POST /settings or /settings.json
  def create
    @setting = Setting.new(setting_params)

    respond_to do |format|
      if @setting.save
        format.html { redirect_to setting_url(@setting), notice: 'Setting was successfully created.' }
        format.json { render :show, status: :created, location: @setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /settings/1 or /settings/1.json
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to setting_url(@setting), notice: 'Setting was successfully updated.' }
        format.json { render :show, status: :ok, location: @setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /settings/1 or /settings/1.json
  def destroy
    @setting.destroy

    respond_to do |format|
      format.html { redirect_to settings_url, notice: 'Setting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_setting
    @setting = Setting.find(params[:id])
  end

  def setting_params
    params.require(:setting).permit(:shop_id, :cart_location, :cart_position, :drawer_location, :drawer_position,
                                    :refresh_state, :drawer_refresh, :layout_bg, :layout_color, :layout_font, :layout_size, :layout_mt, :layout_mb, :offer_radius, :offer_bs, :offer_bc, :offer_border, :button_bg, :button_color, :button_font, :button_size, :button_mt, :button_mb, :button_radius, :button_bs, :button_bc, :button_border, :image_size, :image_radius, :image_bs, :image_bc, :image_border, :text_color, :text_font, :text_size, :title_color, :title_font, :title_size, :price_color, :c_price_color, :price_font, :price_size, :c_price_size, :override)
  end
end
