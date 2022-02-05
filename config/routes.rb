Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  resources :products, only: [:index, :create, :new, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    member do
      patch 'buy'
    end
  end

  resources :lists, only: [:index, :create, :show]

  get 'users', to: "users#index"
  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
end
