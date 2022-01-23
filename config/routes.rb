Rails.application.routes.draw do
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
  root :to => 'home#index'
  get '/products', :to => 'products#index'
  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
