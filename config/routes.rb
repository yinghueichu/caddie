Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'

  resources :products, only: [:index, :create, :new, :edit, :update]

  get 'users', to: "users#index"
  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
end
