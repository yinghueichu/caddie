Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    member do
      patch 'buy'
    end
  end

  resources :lists, only: [:index, :create, :show]

end
