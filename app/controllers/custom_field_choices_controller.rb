# frozen_string_literal: true

class CustomFieldChoicesController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification

  before_action :set_custom_field_choices, only: %i[show edit update destroy]

  # GET /custom_field_choices or /custom_field_choices.json
  def index
    @custom_field_choices = CustomFieldChoice.all
  end

  # GET /custom_field_choices/1 or /custom_field_choices/1.json
  def show; end

  # GET /custom_field_choices/new
  def new
    @custom_field_choices = CustomFieldChoice.new
  end

  # GET /custom_field_choices/1/edit
  def edit; end

  # POST /custom_field_choices or /custom_field_choices.json
  def create
    @custom_field_choices = CustomFieldChoice.new(custom_field_choice_params)

    respond_to do |format|
      if @custom_field_choice.save
        format.html do
          redirect_to custom_field_choice_url(@custom_field_choices),
                      notice: 'custom_field_choices was successfully created.'
        end
        format.json { render :show, status: :created, location: @custom_field_choices }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custom_field_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_field_choices/1 or /custom_field_choices/1.json
  def update
    respond_to do |format|
      if @custom_field_choice.update(custom_field_choice_params)
        format.html do
          redirect_to custom_field_choice_url(@custom_field_choices),
                      notice: 'custom_field_choices was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @custom_field_choices }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custom_field_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_field_choices/1 or /custom_field_choices/1.json
  def destroy
    @custom_field_choice.destroy

    respond_to do |format|
      format.html { redirect_to custom_field_choices_url, notice: 'custom_field_choices was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_custom_field_choices
    @custom_field_choices = CustomFieldChoice.find(params[:id])
  end

  def custom_field_choice_params
    params.require(:custom_field_choice).permit(:custom_field_id, :offer_id, :product_id, :price, :value)
  end
end
