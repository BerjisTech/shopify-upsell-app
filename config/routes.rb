# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'splash_page#index'
  get '/home', to: 'home#index', as: :home
  get '/products', to: 'products#index'
  resources :offers
  resources :offer_products
  resources :stats
  resources :offer_settings
  resources :product_variants
  get 'splash_page/index', to: 'splash_page#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
