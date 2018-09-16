Rails.application.routes.draw do
  get 'product/index'
  get 'product/show'
  devise_for :users
  root to: 'pages#home'
  resources :products, :productors, only: [:index, :show]
  resources :orders, only: [:create, :index, :show] do
    resources :payments, only: [:new, :create]
  end
  resources :order_products, only: [:index, :create, :update, :destroy]
end
