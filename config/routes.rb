Rails.application.routes.draw do
  get 'product/index'
  get 'product/show'
  devise_for :users
  root to: 'pages#home'
  resources :products, :productors, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :order_products, only: [:create, :update, :destroy]
end
