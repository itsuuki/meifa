Rails.application.routes.draw do
  resources :products
  devise_for :users

  root "coordinations#index"

  
  resources :coordinations, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :favorites, only: [:index, :new, :create, :destroy]
    get :search, on: :collection
  end
  resources :users, only: [:index, :new, :create, :destroy]
  resources :outers, only: [:index, :new, :create, :destroy]
  resources :inners, only: [:index, :new, :create, :destroy]
  resources :bottoms, only: [:index, :new, :create, :destroy]
  resources :shoes, only: [:index, :new, :create, :destroy]
  resources :hats, only: [:index, :new, :create, :destroy]
  resources :accessories, only: [:index, :new, :create, :destroy]
end
