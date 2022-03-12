# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :app_path
  before_action :set_get_variables

  def app_path
    @host = params[:host]
    @current_shopify_domain = current_shopify_domain
    @app_path = "https://#{current_shopify_domain}/admin/apps/sleek-upsell-updates"
    @active_shop = Shop.find_by shopify_domain: current_shopify_domain
  end

  def set_get_variables
    values = ''
    params.each do |key, value|
      values += "#{key}=#{value}&"
    end
    @params = values[0...-1]
  end
end
