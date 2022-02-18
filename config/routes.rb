# frozen_string_literal: true

Rails.application.routes.draw do
  resources :features
  resources :helps
  resources :offer_variants
  resources :stats
  resources :settings
  resources :offer_products
  resources :auto_collections
  resources :condition_blocks
  resources :custom_fields
  resources :custom_field_choices
  resources :offer_conditions
  resources :conditions
  resources :offers
  root to: 'offers#index'

  get 'products', controller: :products, action: :index
  get 'help', controller: :helps, action: :index
  get 'feature/request', controller: :features, action: :new, as: :feature_request
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
