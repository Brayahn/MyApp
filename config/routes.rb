Rails.application.routes.draw do
  get 'inventory/index'
  resources :items
  resources :dealers
  devise_for :users
  resources :price_lists
  get 'home/index'
  get 'home/inventory'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #root to: 'home#index'

  devise_scope :user do
    root :to => 'devise/sessions#new'
  end


  
end
