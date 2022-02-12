Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'products#index'

  resources :products, only: [:index, :create, :new, :edit, :update]
  resources :products do
    member do
      patch 'buy'
    end
  end
  resources :tags, only: [:index, :show]
  resources :product_lists, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lists, only: [:index, :create, :show]
  post 'product_to_create', to: "products#product_to_create"
  get 'users', to: "users#index"
  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
end
