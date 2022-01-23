# frozen_string_literal: true

class ConditionsController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification

  before_action :set_condition, only: %i[show edit update destroy]

  # GET /Conditions or /Conditions.json
  def index
    @conditions = Condition.all
  end

  # GET /Conditions/1 or /Conditions/1.json
  def show; end

  # GET /Conditions/new
  def new
    @condition = Condition.new
  end

  # GET /Conditions/1/edit
  def edit; end

  # POST /Conditions or /Conditions.json
  def create
    @condition = Condition.new(conditions_params)

    respond_to do |format|
      if @condition.save
        format.html { redirect_to condition_url(@condition), notice: 'Condition was successfully created.' }
        format.json { render :show, status: :created, location: @condition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Conditions/1 or /Conditions/1.json
  def update
    respond_to do |format|
      if @condition.update(conditions_params)
        format.html { redirect_to condition_url(@condition), notice: 'Condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @condition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Conditions/1 or /Conditions/1.json
  def destroy
    @condition.destroy

    respond_to do |format|
      format.html { redirect_to conditions_url, notice: 'Condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_condition
    @condition = Condition.find(params[:id])
  end

  def conditions_params
    params.require(:condition).permit(:name, :description)
  end
end
